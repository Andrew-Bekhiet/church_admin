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
    return [pscustomobject]@{ id = $Id; emp_code = "code$Id"; punch_time = $PunchTime; upload_time = $uploadTime; terminal_sn = "SN$Id" }
}

function New-Report([hashtable]$Counts = @{}) {
    $report = [ordered]@{}
    foreach ($field in $ReportFields) { $report[$field] = [int]$Counts[$field] }
    return [pscustomobject]$report
}

function New-Answer([int]$Status, $Json) {
    return [pscustomobject]@{ Ok = ($Status -eq 200); Status = $Status; Json = $Json; Error = '' }
}

function Reset-FakesAndCursor($Transactions) {
    $script:BiotimeTransactions = [Collections.Generic.List[object]]@($Transactions)
    $script:RowsWithinAPageAreReversed = $false
    $script:AfterEachPageRead = {}
    $script:PagesRead = New-Object Collections.Generic.List[long]
    $script:AnswerOfFunction = { New-Answer 200 (New-Report) }
    $script:AcceptedBodies = New-Object Collections.Generic.List[object]
    $script:ValidBiotimeToken = 'valid'
    $script:BiotimeToken = $null
    if (Test-Path $CursorPath) { Remove-Item $CursorPath }
}

function Invoke-JsonRequestBeforeRunDeadline([string]$Method, [string]$Uri, [hashtable]$Headers, $Body) {
    if ($Uri -eq 'https://function') {
        if ($Headers['X-Fingerprint-Sync-Secret'] -ne 'secret') { return New-Answer 401 $null }
        if ($null -eq $Body.punches) { return New-Answer 400 $null }
        $answer = & $script:AnswerOfFunction
        if ($answer.Ok) { $script:AcceptedBodies.Add($Body) }
        return $answer
    }
    if ($Uri -like '*/api-token-auth/') { return New-Answer 200 ([pscustomobject]@{ token = $script:ValidBiotimeToken }) }
    if ($Headers.Authorization -ne "Token $script:ValidBiotimeToken") { return New-Answer 401 $null }
    if ($Uri -notmatch '/iclock/api/transactions/\?page=(\d+)&page_size=(\d+)$') { throw "The fake BioTime has no $Uri" }
    $page, $size = [int]$Matches[1], [int]$Matches[2]
    $rows = @($script:BiotimeTransactions | Sort-Object { [long]$_.id } -Descending:$script:RowsWithinAPageAreReversed | Select-Object -Skip (($page - 1) * $size) -First $size)
    if ($page -gt 1 -and $rows.Count -eq 0) { return New-Answer 404 $null }
    $answer = New-Answer 200 ([pscustomobject]@{ count = $script:BiotimeTransactions.Count; data = $rows })
    if ($size -gt 1) { $script:PagesRead.Add($page); & $script:AfterEachPageRead }
    return $answer
}

function Remove-BiotimeTransaction([long]$Id) {
    $script:BiotimeTransactions.RemoveAll([Predicate[object]] { param($transaction) $transaction.id -eq $Id }) | Out-Null
}

function Get-AcceptedCodesByBatch {
    return (@($script:AcceptedBodies | ForEach-Object { @($_.punches | ForEach-Object { $_.employeeCode }) -join ',' }) -join ' | ')
}

$script:Failures = 0
function Assert-Equal($Expected, $Actual, [string]$What) {
    if ([string]$Expected -ceq [string]$Actual) { Write-Host "ok   $What"; return }
    $script:Failures++
    Write-Host "FAIL $What`n     expected: $Expected`n     actual:   $Actual"
}

function Assert-Match([string]$Pattern, [string]$Actual, [string]$What) {
    if ($Actual -match $Pattern) { Write-Host "ok   $What"; return }
    $script:Failures++
    Write-Host "FAIL $What`n     expected to match: $Pattern`n     actual:            $Actual"
}

function Get-ErrorOf([scriptblock]$Action) {
    try { & $Action | Out-Null } catch { return $_.Exception.Message }
    return ''
}

Reset-FakesAndCursor @(11..18 | ForEach-Object { New-Transaction $_ })
Invoke-PollAndCountWarnings $Config $Secrets | Out-Null
Assert-Equal 1 $script:AcceptedBodies.Count 'with no cursor, one batch still marks a sync'
Assert-Equal '' (Get-AcceptedCodesByBatch) 'with no cursor, the punches already in BioTime are not sent'
Assert-Equal 18 (Read-Cursor).highestSentId 'with no cursor, the cursor starts at the newest transaction'

Reset-FakesAndCursor @(1..8 | ForEach-Object { New-Transaction $_ })
Save-Cursor ([pscustomobject]@{ highestSentId = 3 })
Invoke-PollAndCountWarnings $Config $Secrets | Out-Null
Assert-Equal 'code4,code5 | code6,code7 | code8' (Get-AcceptedCodesByBatch) 'punches after the cursor on several pages are sent oldest first in full batches'
Assert-Equal 8 (Read-Cursor).highestSentId 'the cursor ends at the highest id sent'
$script:AcceptedBodies.Clear()
Invoke-PollAndCountWarnings $Config $Secrets | Out-Null
Assert-Equal 1 $script:AcceptedBodies.Count 'a poll with nothing new still sends one batch'
Assert-Equal '' (Get-AcceptedCodesByBatch) 'a poll with nothing new sends no punch again'

Reset-FakesAndCursor @((New-Transaction 1), (New-Transaction 2 -PunchTime '2026-11-21 09:30:15'))
Save-Cursor ([pscustomobject]@{ highestSentId = 1 })
Invoke-PollAndCountWarnings $Config $Secrets | Out-Null
$sentPunch = $script:AcceptedBodies[0].punches[0]
Assert-Equal 'code2 2026-11-21 09:30:15 SN2' "$($sentPunch.employeeCode) $($sentPunch.punchedAtCairoTime) $($sentPunch.terminalSerial)" 'a punch carries the employee code, the raw punch time and the terminal serial'
Assert-Match "^\d{4}-\d{2}-\d{2}T\d{2}:\d{2}:\d{2}$" $script:AcceptedBodies[0].biotimeServerLocalTime 'a batch carries the server local time without a zone'

Reset-FakesAndCursor @(1..8 | ForEach-Object { New-Transaction $_ })
Save-Cursor ([pscustomobject]@{ highestSentId = 2 })
$script:AfterEachPageRead = { Remove-BiotimeTransaction 1 }
Invoke-PollAndCountWarnings $Config $Secrets | Out-Null
Assert-Equal 'code3,code4 | code5,code6 | code7,code8' (Get-AcceptedCodesByBatch) 'a row deleted between page reads makes no unsent punch skipped or sent twice'

Reset-FakesAndCursor @(1..5 | ForEach-Object { New-Transaction $_ })
Save-Cursor ([pscustomobject]@{ highestSentId = 1 })
$script:AnswerOfFunction = { if ($script:AcceptedBodies.Count -eq 1) { New-Answer 500 $null } else { New-Answer 200 (New-Report) } }
Assert-Match 'HTTP 500' (Get-ErrorOf { Invoke-PollAndCountWarnings $Config $Secrets }) 'a batch the function refuses stops the poll'
Assert-Equal 3 (Read-Cursor).highestSentId 'the cursor stays after the last batch the function reported'
$script:AnswerOfFunction = { New-Answer 200 (New-Report) }
$script:AcceptedBodies.Clear()
Invoke-PollAndCountWarnings $Config $Secrets | Out-Null
Assert-Equal 'code4,code5' (Get-AcceptedCodesByBatch) 'the next poll sends only the batch that was refused'

Reset-FakesAndCursor @((New-Transaction 1), (New-Transaction 2))
Save-Cursor ([pscustomobject]@{ highestSentId = 1 })
$script:AnswerOfFunction = { New-Answer 200 '' }
Assert-Match 'answered without' (Get-ErrorOf { Invoke-PollAndCountWarnings $Config $Secrets }) 'an answer without the report stops the poll'
Assert-Equal 1 (Read-Cursor).highestSentId 'the cursor stays when the function answers without the report'

Reset-FakesAndCursor @((New-Transaction 1), (New-Transaction 2 -PunchTime '20/11/2026 08:00'))
Save-Cursor ([pscustomobject]@{ highestSentId = 1 })
Assert-Match 'punch_time' (Get-ErrorOf { Invoke-PollAndCountWarnings $Config $Secrets }) 'a punch time in another layout stops the poll'
Assert-Equal 0 $script:AcceptedBodies.Count 'nothing is sent with a punch time in another layout'
Assert-Equal 1 (Read-Cursor).highestSentId 'the cursor stays with a punch time in another layout'

Reset-FakesAndCursor @((New-Transaction 1), (New-Transaction 2), (New-Transaction 3))
Save-Cursor ([pscustomobject]@{ highestSentId = 1 })
$script:RowsWithinAPageAreReversed = $true
Assert-Match 'ascending id order' (Get-ErrorOf { Invoke-PollAndCountWarnings $Config $Secrets }) 'a page out of id order stops the poll'
Assert-Equal 0 $script:AcceptedBodies.Count 'nothing is sent from a page out of id order'
Assert-Equal 1 (Read-Cursor).highestSentId 'the cursor stays with a page out of id order'

Reset-FakesAndCursor @(@(1..30 | ForEach-Object { New-Transaction $_ -UploadedDaysAgo 30 }) + @(31..34 | ForEach-Object { New-Transaction $_ }))
Save-Cursor ([pscustomobject]@{ highestSentId = 2 })
Invoke-PollAndCountWarnings $Config $Secrets | Out-Null
Assert-Equal $false $script:PagesRead.Contains([long]1) 'after a long outage the read stops before the oldest uploads'
Assert-Equal 'code28,code29 | code30,code31 | code32,code33 | code34' (Get-AcceptedCodesByBatch) 'after a long outage the recent uploads are sent'
Assert-Equal 34 (Read-Cursor).highestSentId 'after a long outage the cursor moves past the uploads that were too old to read'

Reset-FakesAndCursor @((New-Transaction 1), (New-Transaction 2))
Save-Cursor ([pscustomobject]@{ highestSentId = 1 })
$script:ValidBiotimeToken = 'fresh'
$script:BiotimeToken = 'expired'
Invoke-PollAndCountWarnings $Config $Secrets | Out-Null
Assert-Equal 'code2' (Get-AcceptedCodesByBatch) 'an expired BioTime token is replaced by logging in again'

Reset-FakesAndCursor @(1..4 | ForEach-Object { New-Transaction $_ })
Save-Cursor ([pscustomobject]@{ highestSentId = 1 })
$script:AnswerOfFunction = { New-Answer 200 (New-Report @{ ignoredInFuture = 1; ignoredTooOld = 1 }) }
Assert-Equal 2 (Invoke-PollAndCountWarnings $Config $Secrets) 'a poll counts one warning for each kind of ignored punch, however many batches report it'
Reset-FakesAndCursor @((New-Transaction 1))
Save-Cursor ([pscustomobject]@{ highestSentId = 1 })
Assert-Equal 0 (Invoke-PollAndCountWarnings $Config $Secrets) 'a poll with nothing ignored counts no warning'

Reset-FakesAndCursor @((New-Transaction 1))
Assert-Equal $true (Test-BiotimeAndFunctionAccess $Config $Secrets) 'check passes when the function accepts the sync secret'
Assert-Equal 0 $script:AcceptedBodies.Count 'check marks no sync'
$secretsWithAWrongSyncSecret = [pscustomobject]@{ biotimePassword = 'password'; syncSecret = 'wrong' }
Assert-Equal $false (Test-BiotimeAndFunctionAccess $Config $secretsWithAWrongSyncSecret) 'check fails when the function rejects the sync secret'

Remove-Item -Recurse -Force $installFolder
if ($script:Failures -gt 0) { Write-Host "$script:Failures failed"; exit 1 }
Write-Host 'All passed'
