# Runs the poller's functions against a fake BioTime and a fake recordFingerprintPunches, both behind Invoke-JsonRequest.
# Works in Windows PowerShell 5.1 and in PowerShell 7: powershell -ExecutionPolicy Bypass -File test_fingerprint_sync.ps1

$ErrorActionPreference = 'Stop'

$pollerPath = Join-Path $PSScriptRoot 'fingerprint_sync.ps1'
$tokens, $parseErrors = $null, $null
$pollerAst = [Management.Automation.Language.Parser]::ParseFile($pollerPath, [ref]$tokens, [ref]$parseErrors)
if ($parseErrors.Count -gt 0) { throw "fingerprint_sync.ps1 does not parse: $($parseErrors[0])" }
$mainBlock = $pollerAst.EndBlock.Statements[-1]
$installFolder = Join-Path ([IO.Path]::GetTempPath()) "fingerprint_sync_test_$([Guid]::NewGuid().ToString('N'))"
New-Item -ItemType Directory -Path $installFolder | Out-Null
$pollerWithoutMainBlock = Join-Path $installFolder 'fingerprint_sync.ps1'
Set-Content -Path $pollerWithoutMainBlock -Value $pollerAst.Extent.Text.Substring(0, $mainBlock.Extent.StartOffset) -Encoding UTF8
. $pollerWithoutMainBlock

$PageSize = 3
$MaxPunchesPerRequest = 2
$Config = [pscustomobject]@{ biotimeBaseUrl = 'http://biotime'; biotimeUsername = 'api'; functionUrl = 'https://function' }
$Secrets = [pscustomobject]@{ biotimePassword = 'password'; syncSecret = 'secret' }

function New-Transaction([long]$Id, [int]$UploadedDaysAgo = 0, [string]$PunchTime = '2026-11-20 08:00:00') {
    $uploadTime = (Get-Date).AddDays(-$UploadedDaysAgo).ToString($BiotimeTimeFormat, $Invariant)
    return [pscustomobject]@{ id = $Id; emp_code = "code$Id"; punch_time = $PunchTime; upload_time = $uploadTime; terminal_sn = 'SN1' }
}

$ReportOfEveryPunchMatchingAWindow = { param([int]$PunchCount) [pscustomobject]@{ Ok = $true; Status = 200; Json = (New-Report $PunchCount); Error = '' } }

function Reset-Fakes($Transactions) {
    $script:BiotimeTransactions = [Collections.Generic.List[object]]@($Transactions)
    $script:PostedBatches = [Collections.Generic.List[object]]::new()
    $script:PagesRead = 0
    $script:AfterEachPageRead = {}
    $script:AnswerOfFunction = $ReportOfEveryPunchMatchingAWindow
    $script:BiotimeToken = $null
    $script:ValidBiotimeToken = 'token1'
    if (Test-Path $CursorPath) { Remove-Item $CursorPath }
}

function New-Report([int]$MatchedAWindow) {
    $report = [ordered]@{}
    foreach ($field in $ReportFields) { $report[$field] = 0 }
    $report.matchedAWindow = $MatchedAWindow
    return [pscustomobject]$report
}

function Invoke-JsonRequest([string]$Method, [string]$Uri, [hashtable]$Headers, $Body) {
    if ($Uri -eq 'https://function') {
        $answer = & $script:AnswerOfFunction @($Body.punches).Count
        if ($answer.Ok) { $script:PostedBatches.Add(@($Body.punches | ForEach-Object { $_.employeeCode })) }
        return $answer
    }
    if ($Uri -like '*/api-token-auth/') { return [pscustomobject]@{ Ok = $true; Status = 200; Json = [pscustomobject]@{ token = $script:ValidBiotimeToken }; Error = '' } }
    if ($Headers.Authorization -ne "Token $script:ValidBiotimeToken") { return [pscustomobject]@{ Ok = $false; Status = 401; Json = $null; Error = '' } }
    if ($Uri -notmatch '/iclock/api/transactions/\?page=(\d+)&page_size=(\d+)$') { throw "The fake BioTime has no $Uri" }
    $page, $size = [int]$Matches[1], [int]$Matches[2]
    $rows = @($script:BiotimeTransactions | Sort-Object { [long]$_.id } | Select-Object -Skip (($page - 1) * $size) -First $size)
    if ($page -gt 1 -and $rows.Count -eq 0) { return [pscustomobject]@{ Ok = $false; Status = 404; Json = $null; Error = 'Invalid page.' } }
    $response = [pscustomobject]@{ Ok = $true; Status = 200; Json = [pscustomobject]@{ count = $script:BiotimeTransactions.Count; data = $rows }; Error = '' }
    if ($size -eq $PageSize) { $script:PagesRead++; & $script:AfterEachPageRead }
    return $response
}

function Remove-BiotimeTransaction([long]$Id) {
    $script:BiotimeTransactions.RemoveAll([Predicate[object]] { param($transaction) $transaction.id -eq $Id }) | Out-Null
}

function Get-PostedCodes { return (@($script:PostedBatches | ForEach-Object { $_ -join ',' }) -join ' | ') }

$script:Failures = 0
function Assert-Equal($Expected, $Actual, [string]$What) {
    if ([string]$Expected -ceq [string]$Actual) { Write-Host "ok   $What"; return }
    $script:Failures++
    Write-Host "FAIL $What`n     expected: $Expected`n     actual:   $Actual"
}

function Get-ErrorOf([scriptblock]$Action) {
    try { & $Action | Out-Null } catch { return $_.Exception.Message }
    return ''
}

Reset-Fakes @((New-Transaction 1), (New-Transaction 2))
Invoke-Poll $Config $Secrets | Out-Null
Assert-Equal '' (Get-PostedCodes) 'with no cursor, the punches already in BioTime are not sent, only an empty batch'
Assert-Equal 1 $script:PostedBatches.Count 'with no cursor, the empty batch still marks a sync'
Assert-Equal 2 (Read-Cursor).highestSentId 'with no cursor, the cursor starts at the newest transaction'

Reset-Fakes @(1..8 | ForEach-Object { New-Transaction $_ })
Save-Cursor ([pscustomobject]@{ highestSentId = 3 })
Invoke-Poll $Config $Secrets | Out-Null
Assert-Equal 'code4,code5 | code6,code7 | code8' (Get-PostedCodes) 'punches after the cursor on several pages are sent oldest first in full batches'
Assert-Equal 8 (Read-Cursor).highestSentId 'the cursor ends at the highest id sent'
Invoke-Poll $Config $Secrets | Out-Null
Assert-Equal 'code4,code5 | code6,code7 | code8 | ' (Get-PostedCodes) 'the next poll sends nothing again, only an empty batch'

Reset-Fakes @(1..8 | ForEach-Object { New-Transaction $_ })
Save-Cursor ([pscustomobject]@{ highestSentId = 2 })
$script:AfterEachPageRead = { Remove-BiotimeTransaction 1 }
Invoke-Poll $Config $Secrets | Out-Null
Assert-Equal 'code3,code4 | code5,code6 | code7,code8' (Get-PostedCodes) 'a row deleted between page reads makes no unsent punch skipped or sent twice'

Reset-Fakes @(1..5 | ForEach-Object { New-Transaction $_ })
Save-Cursor ([pscustomobject]@{ highestSentId = 1 })
$script:AnswerOfFunction = {
    param([int]$PunchCount)
    if ($script:PostedBatches.Count -eq 1) { return [pscustomobject]@{ Ok = $false; Status = 500; Json = $null; Error = 'down' } }
    & $ReportOfEveryPunchMatchingAWindow $PunchCount
}
$failedPollError = Get-ErrorOf { Invoke-Poll $Config $Secrets }
Assert-Equal 'recordFingerprintPunches answered HTTP 500 to a batch of 2: down' $failedPollError 'a batch the function refuses stops the poll'
Assert-Equal 3 (Read-Cursor).highestSentId 'the cursor stays after the last batch the function reported'
$script:AnswerOfFunction = $ReportOfEveryPunchMatchingAWindow
Invoke-Poll $Config $Secrets | Out-Null
Assert-Equal 'code2,code3 | code4,code5' (Get-PostedCodes) 'the next poll sends the batches that were refused'

Reset-Fakes @((New-Transaction 1), (New-Transaction 2))
Save-Cursor ([pscustomobject]@{ highestSentId = 1 })
$script:AnswerOfFunction = { [pscustomobject]@{ Ok = $true; Status = 200; Json = ''; Error = '' } }
$olderFunctionError = Get-ErrorOf { Invoke-Poll $Config $Secrets }
Assert-Equal 'recordFingerprintPunches answered without matchedAWindow, so it may not have recorded the batch; deploy the current function' $olderFunctionError 'an answer without the report stops the poll'
Assert-Equal 1 (Read-Cursor).highestSentId 'the cursor stays when the function answers without the report'

Reset-Fakes @((New-Transaction 1), (New-Transaction 2 -PunchTime '20/11/2026 08:00'))
Save-Cursor ([pscustomobject]@{ highestSentId = 1 })
$unreadablePunchTimeError = Get-ErrorOf { Invoke-Poll $Config $Secrets }
Assert-Equal "BioTime transaction 2 has punch_time '20/11/2026 08:00', not yyyy-MM-dd HH:mm:ss; the cursor stays before it" $unreadablePunchTimeError 'a punch time in another layout stops the poll'
Assert-Equal 0 $script:PostedBatches.Count 'nothing is sent with a punch time in another layout'

Reset-Fakes @(@(1..30 | ForEach-Object { New-Transaction $_ -UploadedDaysAgo 30 }) + @(31..34 | ForEach-Object { New-Transaction $_ }))
Save-Cursor ([pscustomobject]@{ highestSentId = 2 })
Invoke-Poll $Config $Secrets | Out-Null
Assert-Equal 3 $script:PagesRead 'after a long outage the read stops at the first page of uploads too old for the function'
Assert-Equal 'code28,code29 | code30,code31 | code32,code33 | code34' (Get-PostedCodes) 'after a long outage the recent uploads are sent'
Assert-Equal 34 (Read-Cursor).highestSentId 'after a long outage the cursor moves past the uploads that were too old to read'

Reset-Fakes @((New-Transaction 1), (New-Transaction 2))
Save-Cursor ([pscustomobject]@{ highestSentId = 1 })
$script:BiotimeToken = 'expired'
Invoke-Poll $Config $Secrets | Out-Null
Assert-Equal 'code2' (Get-PostedCodes) 'an expired BioTime token is replaced by logging in again'

$unorderedPage = [pscustomobject]@{ count = 2; data = @([pscustomobject]@{ id = 5 }, [pscustomobject]@{ id = 4 }) }
function Invoke-BiotimeGetLoggingInAgainOn401 { return $unorderedPage }
$unorderedError = Get-ErrorOf { Read-TransactionsPage $Config $Secrets 1 3 }
Assert-Equal 'BioTime page 1 of transactions is not in ascending id order, so new punches cannot be found by id; nothing was sent and the cursor is unchanged' $unorderedError 'a page out of id order stops the read'

Remove-Item -Recurse -Force $installFolder
if ($script:Failures -gt 0) { Write-Host "$script:Failures failed"; exit 1 }
Write-Host 'All passed'
