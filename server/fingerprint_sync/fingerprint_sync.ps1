param(
    [ValidateSet('poll', 'check')]
    [string]$Command = 'poll'
)

# BioTime assigns transaction ids in upload order and lists unfiltered transactions by ascending id,
# while punch times arrive up to days late, so polls read from the end of the list back to the cursor.

# Every request starts before $LastRequestStartSeconds and is cut off after $HttpTimeoutSeconds,
# so a run ends by about 54 s and never overlaps the next minute's run.
$PollOffsetsSeconds = @(0, 20, 40)
$LastRequestStartSeconds = 48
$HttpTimeoutSeconds = 6

$PageSize = 200
# recordFingerprintPunches ignores punches older than 10 days, and a punch is uploaded after it happens;
# the extra day covers a device clock that runs ahead.
$OldestUploadWorthSendingDays = 11
$MaxPunchesPerRequest = 500
$BiotimeTimeFormat = 'yyyy-MM-dd HH:mm:ss'
$BiotimeTimePattern = '^\d{4}-\d{2}-\d{2} \d{2}:\d{2}:\d{2}$'
$ReportFields = 'matchedAWindow', 'matchedNoWindow', 'ignoredMalformed', 'ignoredTooOld', 'ignoredInFuture', 'ignoredUnlinkedEmployeeCode'
$Invariant = [Globalization.CultureInfo]::InvariantCulture

$ErrorActionPreference = 'Stop'
Add-Type -AssemblyName System.Security
[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12
# Windows PowerShell 5.1 serialises arrays as {"value":[...],"Count":n} while this type data exists.
Remove-TypeData System.Array -ErrorAction SilentlyContinue

$ConfigPath = Join-Path $PSScriptRoot 'config.json'
$SecretsPath = Join-Path $PSScriptRoot 'secrets.bin'
$CursorPath = Join-Path $PSScriptRoot 'cursor.json'
$LogFolder = Join-Path $PSScriptRoot 'logs'
$LogPath = Join-Path $LogFolder 'fingerprint_sync.log'

$RunClock = [Diagnostics.Stopwatch]::StartNew()
$script:BiotimeToken = $null

function Write-Log([string]$Level, [string]$Message) {
    $line = '{0} {1} {2}' -f (Get-Date).ToString('yyyy-MM-dd HH:mm:ss', $Invariant), $Level, $Message
    Write-Host $line
    try {
        if (-not (Test-Path $LogFolder)) { New-Item -ItemType Directory -Path $LogFolder | Out-Null }
        if ((Test-Path $LogPath) -and (Get-Item $LogPath).Length -gt 1MB) {
            foreach ($i in 2, 1) {
                if (Test-Path "$LogPath.$i") { Move-Item -Force "$LogPath.$i" "$LogPath.$($i + 1)" }
            }
            Move-Item -Force $LogPath "$LogPath.1"
        }
        Add-Content -Path $LogPath -Value $line -Encoding UTF8
    } catch {
        Write-Host "Could not write the log file: $($_.Exception.Message)"
    }
}

function Read-Config {
    $config = Get-Content -Raw -Path $ConfigPath | ConvertFrom-Json
    foreach ($name in 'biotimeBaseUrl', 'biotimeUsername', 'functionUrl') {
        if ([string]::IsNullOrWhiteSpace($config.$name)) { throw "config.json has no $name; rerun setup_fingerprint_sync.ps1" }
    }
    if ($config.functionUrl -notmatch '^https://') { throw "functionUrl must be an https URL: $($config.functionUrl)" }
    return $config
}

function Read-Secrets {
    $protected = [IO.File]::ReadAllBytes($SecretsPath)
    $bytes = [Security.Cryptography.ProtectedData]::Unprotect($protected, $null, [Security.Cryptography.DataProtectionScope]::LocalMachine)
    return [Text.Encoding]::UTF8.GetString($bytes) | ConvertFrom-Json
}

function Invoke-JsonRequestBeforeRunDeadline([string]$Method, [string]$Uri, [hashtable]$Headers, $Body) {
    if ($RunClock.Elapsed.TotalSeconds -ge $LastRequestStartSeconds) {
        throw 'Out of time for this run; batches already sent stay sent'
    }
    $request = @{ Method = $Method; Uri = $Uri; Headers = $Headers; TimeoutSec = $HttpTimeoutSeconds; UseBasicParsing = $true }
    if ($null -ne $Body) {
        $request.Body = [Text.Encoding]::UTF8.GetBytes((ConvertTo-Json -InputObject $Body -Depth 5 -Compress))
        $request.ContentType = 'application/json; charset=utf-8'
    }
    try {
        return [pscustomobject]@{ Ok = $true; Status = 200; Json = (Invoke-RestMethod @request); Error = '' }
    } catch [Net.WebException] {
        if ($null -eq $_.Exception.Response) { throw }
        $errorBody = ''
        if ($null -ne $_.ErrorDetails) { $errorBody = [string]$_.ErrorDetails.Message }
        if ($errorBody.Length -gt 200) { $errorBody = $errorBody.Substring(0, 200) }
        return [pscustomobject]@{ Ok = $false; Status = [int]$_.Exception.Response.StatusCode; Json = $null; Error = $errorBody }
    }
}

function Connect-Biotime($Config, $Secrets) {
    $login = @{ username = $Config.biotimeUsername; password = $Secrets.biotimePassword }
    $response = Invoke-JsonRequestBeforeRunDeadline 'POST' "$($Config.biotimeBaseUrl)/api-token-auth/" @{} $login
    if (-not $response.Ok) { throw "BioTime refused the login with HTTP $($response.Status): $($response.Error)" }
    $script:BiotimeToken = $response.Json.token
}

function Invoke-BiotimeGetLoggingInAgainOn401($Config, $Secrets, [string]$Uri) {
    if ($null -eq $script:BiotimeToken) { Connect-Biotime $Config $Secrets }
    $response = Invoke-JsonRequestBeforeRunDeadline 'GET' $Uri @{ Authorization = "Token $script:BiotimeToken" } $null
    if ($response.Status -eq 401) {
        Connect-Biotime $Config $Secrets
        $response = Invoke-JsonRequestBeforeRunDeadline 'GET' $Uri @{ Authorization = "Token $script:BiotimeToken" } $null
    }
    if (-not $response.Ok) { throw "BioTime answered HTTP $($response.Status) to a transactions request: $($response.Error)" }
    return $response.Json
}

# Pages by number rather than following "next", whose links carry BioTime's internal host name.
function Read-TransactionsPage($Config, $Secrets, [long]$Page, [int]$Size) {
    $uri = '{0}/iclock/api/transactions/?page={1}&page_size={2}' -f $Config.biotimeBaseUrl, $Page, $Size
    $response = Invoke-BiotimeGetLoggingInAgainOn401 $Config $Secrets $uri
    $count = [long]0
    if (-not [long]::TryParse([string]$response.count, [ref]$count)) { throw "BioTime answered a transactions request without a count: '$($response.count)'" }
    $rows = @(@($response.data) | Where-Object { $null -ne $_.id })
    for ($i = 1; $i -lt $rows.Count; $i++) {
        if ([long]$rows[$i].id -le [long]$rows[$i - 1].id) {
            throw "BioTime page $Page of transactions is not in ascending id order, so new punches cannot be found by id; nothing was sent and the cursor is unchanged"
        }
    }
    return [pscustomobject]@{ Count = $count; Rows = $rows }
}

function Get-LastTransactionsPageNumber($Config, $Secrets) {
    $count = (Read-TransactionsPage $Config $Secrets 1 1).Count
    return [long][Math]::Max(1, [Math]::Ceiling($count / $PageSize))
}

function Read-HighestTransactionId($Config, $Secrets) {
    $rows = @((Read-TransactionsPage $Config $Secrets (Get-LastTransactionsPageNumber $Config $Secrets) $PageSize).Rows)
    if ($rows.Count -eq 0) { return [long]0 }
    return [long]$rows[$rows.Count - 1].id
}

function Test-UploadTimeReadableAndBefore($Transaction, [string]$BiotimeTime) {
    $uploadTime = [string]$Transaction.upload_time
    return ($uploadTime -match $BiotimeTimePattern) -and ([string]::CompareOrdinal($uploadTime, $BiotimeTime) -lt 0)
}

# Reading back from the end means a deleted row can only shift later rows into pages not read yet,
# so a row may be read twice but never skipped; rows appended meanwhile wait for the next poll.
# The read also stops at uploads too old for the function, so a long outage cannot outgrow a run.
function Read-TransactionsWorthSendingAfter($Config, $Secrets, [long]$AfterId) {
    $oldestUploadWorthSending = (Get-Date).AddDays(-$OldestUploadWorthSendingDays).ToString($BiotimeTimeFormat, $Invariant)
    $byId = @{}
    $page = Get-LastTransactionsPageNumber $Config $Secrets
    do {
        $rows = @((Read-TransactionsPage $Config $Secrets $page $PageSize).Rows)
        foreach ($row in $rows) {
            if ([long]$row.id -gt $AfterId) { $byId[[long]$row.id] = $row }
        }
        $reachedCursor = ($rows.Count -gt 0) -and ([long]$rows[0].id -le $AfterId)
        $reachedUploadsTooOldToSend = ($rows.Count -gt 0) -and (Test-UploadTimeReadableAndBefore $rows[0] $oldestUploadWorthSending)
        $page--
    } while (-not $reachedCursor -and -not $reachedUploadsTooOldToSend -and $page -ge 1)
    return @($byId.Values | Sort-Object { [long]$_.id })
}

function Read-Cursor {
    if (-not (Test-Path $CursorPath)) { return $null }
    return Get-Content -Raw -Path $CursorPath | ConvertFrom-Json
}

function Save-Cursor($Cursor) {
    $temporaryPath = "$CursorPath.tmp"
    $bytes = [Text.Encoding]::UTF8.GetBytes((ConvertTo-Json -InputObject $Cursor -Compress))
    $stream = [IO.File]::Open($temporaryPath, [IO.FileMode]::Create, [IO.FileAccess]::Write)
    try { $stream.Write($bytes, 0, $bytes.Length); $stream.Flush($true) } finally { $stream.Dispose() }
    if (Test-Path $CursorPath) { [IO.File]::Replace($temporaryPath, $CursorPath, [NullString]::Value) } else { [IO.File]::Move($temporaryPath, $CursorPath) }
}

function Send-Punches($Config, $Secrets, $Transactions) {
    $punches = @(foreach ($transaction in $Transactions) {
        if ([string]$transaction.punch_time -notmatch $BiotimeTimePattern) {
            throw "BioTime transaction $($transaction.id) has punch_time '$($transaction.punch_time)', not $BiotimeTimeFormat; nothing of its batch is sent and the cursor stays before the batch"
        }
        [ordered]@{
            employeeCode = [string]$transaction.emp_code
            punchedAtCairoTime = [string]$transaction.punch_time
            terminalSerial = [string]$transaction.terminal_sn
        }
    })
    $body = [ordered]@{
        biotimeServerLocalTime = (Get-Date).ToString("yyyy-MM-dd'T'HH:mm:ss", $Invariant)
        punches = $punches
    }
    $response = Invoke-JsonRequestBeforeRunDeadline 'POST' $Config.functionUrl @{ 'X-Fingerprint-Sync-Secret' = $Secrets.syncSecret } $body
    if (-not $response.Ok) { throw "recordFingerprintPunches answered HTTP $($response.Status) to a batch of $($punches.Count): $($response.Error)" }
    foreach ($field in $ReportFields) {
        if ($null -eq $response.Json.$field) { throw "recordFingerprintPunches answered without $field, so it may not have recorded the batch; deploy the current function" }
    }
    return $response.Json
}

function Invoke-PollAndCountWarnings($Config, $Secrets) {
    $cursor = Read-Cursor
    if ($null -eq $cursor) {
        $cursor = [pscustomobject]@{ highestSentId = (Read-HighestTransactionId $Config $Secrets) }
        Save-Cursor $cursor
        Write-Log 'INFO' "No cursor yet: skipping the punches already in BioTime, sending punches after transaction id $($cursor.highestSentId)"
    }
    $unsent = @(Read-TransactionsWorthSendingAfter $Config $Secrets ([long]$cursor.highestSentId))
    $totals = [ordered]@{}
    foreach ($field in $ReportFields) { $totals[$field] = 0 }
    $sent = 0
    do {
        # An empty batch still goes out, so the app's last sync time shows the poller is alive.
        $batch = @($unsent | Select-Object -Skip $sent -First $MaxPunchesPerRequest)
        $report = Send-Punches $Config $Secrets $batch
        if ($batch.Count -gt 0) {
            $cursor = [pscustomobject]@{ highestSentId = [long]$batch[$batch.Count - 1].id }
            Save-Cursor $cursor
        }
        $sent += $batch.Count
        foreach ($field in $ReportFields) { $totals[$field] += [int]$report.$field }
    } while ($sent -lt $unsent.Count)
    $counts = ($ReportFields | ForEach-Object { "$_=$($totals[$_])" }) -join ' '
    Write-Log 'INFO' "sent=$sent $counts cursor=$($cursor.highestSentId)"
    $warnings = @(
        if ($totals.ignoredUnlinkedEmployeeCode -gt 0) { "$($totals.ignoredUnlinkedEmployeeCode) punches have a fingerprint ID linked to no person; the function's log names each one" }
        if ($totals.ignoredMalformed -gt 0) { "$($totals.ignoredMalformed) punches were rejected by the function as malformed" }
        if ($totals.ignoredTooOld -gt 0) { "$($totals.ignoredTooOld) punches were older than the function accepts" }
        if ($totals.ignoredInFuture -gt 0) { "$($totals.ignoredInFuture) punches were in the future; check the BioTime server and device clocks" }
    )
    foreach ($warning in $warnings) { Write-Log 'WARN' $warning }
    return $warnings.Count
}

function Test-BiotimeAndFunctionAccess($Config, $Secrets) {
    Connect-Biotime $Config $Secrets
    Write-Log 'INFO' "check: logged in to BioTime at $($Config.biotimeBaseUrl)"
    Read-TransactionsPage $Config $Secrets 1 1 | Out-Null
    Write-Log 'INFO' 'check: read BioTime transactions'
    # The function checks the secret before the body, so an empty object proves the secret without marking a sync.
    $response = Invoke-JsonRequestBeforeRunDeadline 'POST' $Config.functionUrl @{ 'X-Fingerprint-Sync-Secret' = $Secrets.syncSecret } @{}
    if ($response.Status -eq 400) {
        Write-Log 'INFO' 'check: recordFingerprintPunches accepted the sync secret'
        return $true
    }
    if ($response.Status -eq 401) { Write-Log 'ERROR' 'check: recordFingerprintPunches rejected the sync secret' } else {
        Write-Log 'ERROR' "check: recordFingerprintPunches answered HTTP $($response.Status), expected 400: $($response.Error)"
    }
    return $false
}

try {
    $config = Read-Config
    $config.biotimeBaseUrl = $config.biotimeBaseUrl.TrimEnd('/')
    $secrets = Read-Secrets
    if ($Command -eq 'check') { exit ([int](-not (Test-BiotimeAndFunctionAccess $config $secrets))) }
    $warningCount = 0
    foreach ($offset in $PollOffsetsSeconds) {
        $wait = $offset - $RunClock.Elapsed.TotalSeconds
        if ($wait -gt 0) { Start-Sleep -Milliseconds ([int]($wait * 1000)) }
        if ($RunClock.Elapsed.TotalSeconds -ge $LastRequestStartSeconds) { break }
        $warningCount += Invoke-PollAndCountWarnings $config $secrets
    }
    if ($warningCount -gt 0) { exit 2 }
    exit 0
} catch {
    Write-Log 'ERROR' "$($_.Exception.Message) - skipping the rest of this run; the next run retries"
    exit 1
}
