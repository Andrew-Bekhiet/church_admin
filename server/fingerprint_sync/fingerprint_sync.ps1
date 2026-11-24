param(
    [ValidateSet('poll', 'check')]
    [string]$Command = 'poll'
)

# TENTATIVE until the BioTime probe confirms them:
# 1. BioTime transaction ids rise in upload order, so the cursor is the highest id already sent.
# 2. start_time filters on punch time, so every poll rereads the last $LookbackHours hours
#    and a late upload is still found while its punch is younger than that.
$LookbackHours = 48

# Every request starts before $LastRequestStartSeconds and is cut off after $HttpTimeoutSeconds,
# so a run ends by about 54 s and never overlaps the next minute's run.
$PollOffsetsSeconds = @(0, 20, 40)
$PollBudgetSeconds = 14
$LastRequestStartSeconds = 48
$HttpTimeoutSeconds = 6

$PageSize = 100
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
function Read-TransactionsInLookback($Config, $Secrets) {
    $startTime = (Get-Date).AddHours(-$LookbackHours).ToString($BiotimeTimeFormat, $Invariant)
    $transactions = New-Object System.Collections.Generic.List[object]
    for ($page = 1; ; $page++) {
        $uri = '{0}/iclock/api/transactions/?start_time={1}&page={2}&page_size={3}' -f $Config.biotimeBaseUrl, [Uri]::EscapeDataString($startTime), $page, $PageSize
        $response = Invoke-BiotimeGetLoggingInAgainOn401 $Config $Secrets $uri
        foreach ($transaction in @($response.data)) {
            if ($null -ne $transaction.id) { $transactions.Add($transaction) }
        }
        if ($null -eq $response.next) { return $transactions }
    }
}

function Read-Cursor {
    if (-not (Test-Path $CursorPath)) { return $null }
    return Get-Content -Raw -Path $CursorPath | ConvertFrom-Json
}

function New-CursorSkippingTransactions($Transactions) {
    $highestId = [long]0
    foreach ($transaction in $Transactions) {
        if ([long]$transaction.id -gt $highestId) { $highestId = [long]$transaction.id }
    }
    return [pscustomobject]@{ highestSentId = $highestId }
}

function Select-UnsentTransactions($Transactions, $Cursor) {
    $highestSentId = [long]$Cursor.highestSentId
    return @($Transactions | Where-Object { [long]$_.id -gt $highestSentId } | Sort-Object { [long]$_.id })
}

function Get-CursorAfterSentBatch($Cursor, $Batch) {
    $next = New-CursorSkippingTransactions $Batch
    if ([long]$next.highestSentId -lt [long]$Cursor.highestSentId) { return $Cursor }
    return $next
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

function Invoke-Poll($Config, $Secrets) {
    $transactions = @(Read-TransactionsInLookback $Config $Secrets)
    $cursor = Read-Cursor
    if ($null -eq $cursor) {
        $cursor = New-CursorSkippingTransactions $transactions
        Save-Cursor $cursor
        Write-Log 'INFO' "No cursor yet: skipping the $($transactions.Count) punches already in BioTime, sending punches after transaction id $($cursor.highestSentId)"
    }
    $unsent = @(Select-UnsentTransactions $transactions $cursor)
    $totals = [ordered]@{}
    foreach ($field in $ReportFields) { $totals[$field] = 0 }
    $sent = 0
    $warnings = New-Object System.Collections.Generic.List[string]
    $start = 0
    do {
        $batch = @($unsent | Select-Object -Skip $start -First $MaxPunchesPerRequest)
        $report = Send-Punches $Config $Secrets $batch
        if ($batch.Count -gt 0) {
            $cursor = Get-CursorAfterSentBatch $cursor $batch
            Save-Cursor $cursor
        }
        $sent += $batch.Count
        foreach ($field in $ReportFields) { $totals[$field] += [int]$report.$field }
        if ([int]$report.ignoredUnlinkedEmployeeCode -gt 0) {
            $codes = @($batch | ForEach-Object { [string]$_.emp_code } | Sort-Object -Unique)
            $warnings.Add("$($report.ignoredUnlinkedEmployeeCode) punches have a fingerprint ID linked to no person; the unlinked ones are among these employee codes: $($codes -join ', ')")
        }
        $start += $MaxPunchesPerRequest
    } while ($start -lt $unsent.Count)
    $counts = ($ReportFields | ForEach-Object { "$_=$($totals[$_])" }) -join ' '
    Write-Log 'INFO' "read=$($transactions.Count) unsent=$($unsent.Count) sent=$sent $counts cursor=$($cursor.highestSentId)"
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
