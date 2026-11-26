param(
    [ValidateSet('poll', 'check')]
    [string]$Command = 'poll'
)

# BioTime assigns transaction ids in upload order and lists unfiltered transactions by ascending id,
# while punch times arrive up to days late, so polls find the first row after the cursor and read forward from it.

# Every request starts before $LastRequestStartSeconds and is cut off after $HttpTimeoutSeconds,
# so a run ends by about 54 s and never overlaps the next minute's run.
$PollOffsetsSeconds = @(0, 20, 40)
$PollBudgetSeconds = 14
$LastRequestStartSeconds = 48
$HttpTimeoutSeconds = 6

# A page of 1000 takes about 3 s and one of 100 well under 1 s; a poll starts a page only with its reserve left,
# and reads a short tail in small pages so the 8-second last poll still sends it.
$PageSize, $PageReserveSeconds = 1000, 5
$TailPageSize, $TailPageReserveSeconds = 100, 2
$MaxPunchesPerRequest = 500
$BiotimeTimeFormat = 'yyyy-MM-dd HH:mm:ss'
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
$script:PollDeadlineSeconds = $LastRequestStartSeconds
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

function Test-PrivateOrLoopbackAddress([Net.IPAddress]$Address) {
    $bytes = $Address.GetAddressBytes()
    if ($Address.AddressFamily -eq [Net.Sockets.AddressFamily]::InterNetwork) {
        return ($bytes[0] -eq 127) -or ($bytes[0] -eq 10) -or
            ($bytes[0] -eq 172 -and $bytes[1] -ge 16 -and $bytes[1] -le 31) -or
            ($bytes[0] -eq 192 -and $bytes[1] -eq 168) -or
            ($bytes[0] -eq 169 -and $bytes[1] -eq 254)
    }
    return [Net.IPAddress]::IsLoopback($Address) -or $Address.IsIPv6LinkLocal -or (($bytes[0] -band 0xFE) -eq 0xFC)
}

function Assert-SafeFunctionUrl([string]$Url) {
    $uri = $null
    if (-not [Uri]::TryCreate($Url, [UriKind]::Absolute, [ref]$uri)) { throw "functionUrl is not a URL: $Url" }
    if ($uri.Scheme -eq 'https') { return }
    $address = $null
    $isPrivateHost = ($uri.DnsSafeHost -eq 'localhost') -or
        ([Net.IPAddress]::TryParse($uri.DnsSafeHost, [ref]$address) -and (Test-PrivateOrLoopbackAddress $address))
    if ($uri.Scheme -ne 'http' -or -not $isPrivateHost) {
        throw "functionUrl must be https unless it points at localhost or a private network address: $Url"
    }
}

function Read-Config {
    $config = Get-Content -Raw -Path $ConfigPath | ConvertFrom-Json
    foreach ($name in 'biotimeBaseUrl', 'biotimeUsername', 'functionUrl') {
        if ([string]::IsNullOrWhiteSpace($config.$name)) { throw "config.json has no $name; rerun setup_fingerprint_sync.ps1" }
    }
    Assert-SafeFunctionUrl $config.functionUrl
    return $config
}

function Read-Secrets {
    $protected = [IO.File]::ReadAllBytes($SecretsPath)
    $bytes = [Security.Cryptography.ProtectedData]::Unprotect($protected, $null, [Security.Cryptography.DataProtectionScope]::LocalMachine)
    return [Text.Encoding]::UTF8.GetString($bytes) | ConvertFrom-Json
}

function Invoke-JsonRequest([string]$Method, [string]$Uri, [hashtable]$Headers, $Body) {
    if ($RunClock.Elapsed.TotalSeconds -ge $script:PollDeadlineSeconds) {
        throw 'Out of time for this poll; the next poll rereads what this one did not send'
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
    $response = Invoke-JsonRequest 'POST' "$($Config.biotimeBaseUrl)/api-token-auth/" @{} $login
    if (-not $response.Ok) { throw "BioTime refused the login with HTTP $($response.Status): $($response.Error)" }
    $script:BiotimeToken = $response.Json.token
}

function Invoke-BiotimeGetLoggingInAgainOn401($Config, $Secrets, [string]$Uri) {
    if ($null -eq $script:BiotimeToken) { Connect-Biotime $Config $Secrets }
    $response = Invoke-JsonRequest 'GET' $Uri @{ Authorization = "Token $script:BiotimeToken" } $null
    if ($response.Status -eq 401) {
        Connect-Biotime $Config $Secrets
        $response = Invoke-JsonRequest 'GET' $Uri @{ Authorization = "Token $script:BiotimeToken" } $null
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
            throw "BioTime page $Page of transactions is not in ascending id order, so new punches cannot be found by id; nothing more is sent and the cursor stays"
        }
    }
    return [pscustomobject]@{ Count = $count; Rows = $rows }
}

function Read-TransactionIdAt($Config, $Secrets, [long]$Position) {
    $page = Read-TransactionsPage $Config $Secrets $Position 1
    $id = $null
    if ($page.Rows.Count -gt 0) { $id = [long]$page.Rows[0].id }
    return [pscustomobject]@{ Count = $page.Count; Id = $id }
}

function Read-HighestTransactionId($Config, $Secrets) {
    $count = (Read-TransactionIdAt $Config $Secrets 1).Count
    if ($count -eq 0) { return [long]0 }
    $id = (Read-TransactionIdAt $Config $Secrets $count).Id
    if ($null -eq $id) { throw 'BioTime dropped its newest transaction while the poller read it; the next run retries' }
    return $id
}

# Binary search over row positions, since page_size=1 makes page k the k-th row. The first probe is
# the last row, so a poll with nothing new costs two small requests.
function Find-FirstPositionAfter($Config, $Secrets, [long]$AfterId) {
    $first = Read-TransactionIdAt $Config $Secrets 1
    $count = $first.Count
    if ($null -eq $first.Id -or $first.Id -gt $AfterId) { return [pscustomobject]@{ Position = [long]1; Count = $count } }
    $low, $lowId, $high, $highId, $middle = [long]1, $first.Id, ($count + 1), [long]::MaxValue, $count
    while ($high - $low -gt 1) {
        $id = (Read-TransactionIdAt $Config $Secrets $middle).Id
        if ($null -ne $id -and ($id -le $lowId -or $id -ge $highId)) {
            throw "BioTime transactions are not in ascending id order around row $middle, so new punches cannot be found by id; nothing was sent and the cursor is unchanged"
        }
        if ($null -eq $id) { $high = $middle } elseif ($id -gt $AfterId) { $high, $highId = $middle, $id } else { $low, $lowId = $middle, $id }
        $middle = [long][Math]::Floor(($low + $high) / 2)
    }
    return [pscustomobject]@{ Position = $high; Count = $count }
}

function Read-Cursor {
    if (-not (Test-Path $CursorPath)) { return $null }
    return Get-Content -Raw -Path $CursorPath | ConvertFrom-Json
}

function Get-CursorAfterSentBatch($Cursor, $Batch) {
    $highestId = [long]$Batch[$Batch.Count - 1].id
    if ($highestId -lt [long]$Cursor.highestSentId) { return $Cursor }
    return [pscustomobject]@{ highestSentId = $highestId }
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
        if ([string]$transaction.punch_time -notmatch '^\d{4}-\d{2}-\d{2} \d{2}:\d{2}:\d{2}$') {
            throw "BioTime transaction $($transaction.id) has punch_time '$($transaction.punch_time)', not $BiotimeTimeFormat; the cursor stays before it"
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
    $response = Invoke-JsonRequest 'POST' $Config.functionUrl @{ 'X-Fingerprint-Sync-Secret' = $Secrets.syncSecret } $body
    if (-not $response.Ok) { throw "recordFingerprintPunches answered HTTP $($response.Status) to a batch of $($punches.Count): $($response.Error)" }
    foreach ($field in $ReportFields) {
        if ($null -eq $response.Json.$field) { throw "recordFingerprintPunches answered without $field, so it may not have recorded the batch; deploy the current function" }
    }
    return $response.Json
}

$ReportFields = 'matchedAWindow', 'matchedNoWindow', 'ignoredMalformed', 'ignoredTooOld', 'ignoredInFuture', 'ignoredUnlinkedEmployeeCode'

function Send-BatchAndAdvanceCursor($Config, $Secrets, $Poll, $Batch) {
    $report = Send-Punches $Config $Secrets $Batch
    if ($Batch.Count -gt 0) {
        $Poll.Cursor = Get-CursorAfterSentBatch $Poll.Cursor $Batch
        Save-Cursor $Poll.Cursor
    }
    $Poll.Sent += $Batch.Count
    $Poll.Batches++
    foreach ($field in $ReportFields) { $Poll.Totals[$field] += [int]$report.$field }
    if ([int]$report.ignoredUnlinkedEmployeeCode -gt 0) {
        $codes = @($Batch | ForEach-Object { [string]$_.emp_code } | Sort-Object -Unique)
        $Poll.Warnings.Add("$($report.ignoredUnlinkedEmployeeCode) punches have a fingerprint ID linked to no person; the unlinked ones are among these employee codes: $($codes -join ', ')")
    }
}

# A deleted row shifts every later row one position left, which can move an unsent row in front of the
# page being read. So a page that starts with an unsent row is sent only while the row before it is
# still one already sent; otherwise the read steps back a page.
function Send-TransactionsFrom($Config, $Secrets, $Poll, [long]$Position) {
    $size, $reserve = $PageSize, $PageReserveSeconds
    if ($Poll.Left -le $TailPageSize) { $size, $reserve = $TailPageSize, $TailPageReserveSeconds }
    $page = [long][Math]::Floor(($Position - 1) / $size) + 1
    while ($RunClock.Elapsed.TotalSeconds + $reserve -lt $script:PollDeadlineSeconds) {
        $sentId = [long]$Poll.Cursor.highestSentId
        $read = Read-TransactionsPage $Config $Secrets $page $size
        $startsUnsent = ($read.Rows.Count -eq 0) -or ([long]$read.Rows[0].id -gt $sentId)
        if ($page -gt 1 -and $startsUnsent) {
            $before = (Read-TransactionIdAt $Config $Secrets (($page - 1) * $size)).Id
            if ($null -eq $before -or $before -gt $sentId) { $page--; continue }
        }
        $unsent = @($read.Rows | Where-Object { [long]$_.id -gt $sentId })
        for ($start = 0; $start -lt $unsent.Count; $start += $MaxPunchesPerRequest) {
            $batch = @($unsent | Select-Object -Skip $start -First $MaxPunchesPerRequest)
            Send-BatchAndAdvanceCursor $Config $Secrets $Poll $batch
        }
        $Poll.Left = [Math]::Max([long]0, [long]($read.Count - $page * $size))
        if ($Poll.Left -eq 0) { return }
        $page++
    }
}

function Invoke-Poll($Config, $Secrets) {
    $cursor = Read-Cursor
    if ($null -eq $cursor) {
        $cursor = [pscustomobject]@{ highestSentId = (Read-HighestTransactionId $Config $Secrets) }
        Save-Cursor $cursor
        Write-Log 'INFO' "No cursor yet: skipping the punches already in BioTime, sending punches after transaction id $($cursor.highestSentId)"
    }
    $poll = @{ Cursor = $cursor; Sent = 0; Batches = 0; Totals = [ordered]@{}; Warnings = (New-Object System.Collections.Generic.List[string]) }
    foreach ($field in $ReportFields) { $poll.Totals[$field] = 0 }
    $first = Find-FirstPositionAfter $Config $Secrets ([long]$cursor.highestSentId)
    $poll.Left = $first.Count - $first.Position + 1
    if ($poll.Left -gt 0) { Send-TransactionsFrom $Config $Secrets $poll $first.Position }
    if ($poll.Batches -eq 0) { Send-BatchAndAdvanceCursor $Config $Secrets $poll @() }
    $totals, $warnings = $poll.Totals, $poll.Warnings
    $counts = ($ReportFields | ForEach-Object { "$_=$($totals[$_])" }) -join ' '
    Write-Log 'INFO' "sent=$($poll.Sent) left=$($poll.Left) $counts cursor=$($poll.Cursor.highestSentId)"
    if ($totals.ignoredMalformed -gt 0) { $warnings.Add("$($totals.ignoredMalformed) punches were rejected by the function as malformed") }
    if ($totals.ignoredTooOld -gt 0) { $warnings.Add("$($totals.ignoredTooOld) punches were older than the function accepts") }
    if ($totals.ignoredInFuture -gt 0) { $warnings.Add("$($totals.ignoredInFuture) punches were in the future; check the BioTime server and device clocks") }
    foreach ($warning in $warnings) { Write-Log 'WARN' $warning }
    return $warnings.Count
}

function Invoke-Check($Config, $Secrets) {
    Connect-Biotime $Config $Secrets
    Write-Log 'INFO' "check: logged in to BioTime at $($Config.biotimeBaseUrl)"
    $uri = '{0}/iclock/api/transactions/?page=1&page_size=1' -f $Config.biotimeBaseUrl
    Invoke-BiotimeGetLoggingInAgainOn401 $Config $Secrets $uri | Out-Null
    Write-Log 'INFO' 'check: read BioTime transactions'
    # The function checks the secret before the body, so an empty object proves the secret without marking a sync.
    $response = Invoke-JsonRequest 'POST' $Config.functionUrl @{ 'X-Fingerprint-Sync-Secret' = $Secrets.syncSecret } @{}
    if ($response.Status -eq 400) {
        Write-Log 'INFO' 'check: recordFingerprintPunches accepted the sync secret'
        return 0
    }
    if ($response.Status -eq 401) { Write-Log 'ERROR' 'check: recordFingerprintPunches rejected the sync secret' } else {
        Write-Log 'ERROR' "check: recordFingerprintPunches answered HTTP $($response.Status), expected 400: $($response.Error)"
    }
    return 1
}

try {
    $config = Read-Config
    $config.biotimeBaseUrl = $config.biotimeBaseUrl.TrimEnd('/')
    $secrets = Read-Secrets
    if ($Command -eq 'check') { exit (Invoke-Check $config $secrets) }
    $warningCount = 0
    foreach ($offset in $PollOffsetsSeconds) {
        $wait = $offset - $RunClock.Elapsed.TotalSeconds
        if ($wait -gt 0) { Start-Sleep -Milliseconds ([int]($wait * 1000)) }
        $script:PollDeadlineSeconds = [Math]::Min($RunClock.Elapsed.TotalSeconds + $PollBudgetSeconds, $LastRequestStartSeconds)
        $warningCount += Invoke-Poll $config $secrets
    }
    if ($warningCount -gt 0) { exit 2 }
    exit 0
} catch {
    Write-Log 'ERROR' "$($_.Exception.Message) - skipping the rest of this run; the next run retries"
    exit 1
}
