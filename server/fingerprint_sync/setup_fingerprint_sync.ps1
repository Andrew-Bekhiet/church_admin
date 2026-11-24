#Requires -RunAsAdministrator
param([switch]$Uninstall)

$ErrorActionPreference = 'Stop'
Add-Type -AssemblyName System.Security

$TaskName = 'Fingerprint sync'
$PollerPath = Join-Path $PSScriptRoot 'fingerprint_sync.ps1'
$ConfigPath = Join-Path $PSScriptRoot 'config.json'
$SecretsPath = Join-Path $PSScriptRoot 'secrets.bin'
$Administrators = '*S-1-5-32-544'
$System = '*S-1-5-18'
$Users = '*S-1-5-32-545'

if ($Uninstall) {
    if (Get-ScheduledTask -TaskName $TaskName -ErrorAction SilentlyContinue) {
        Unregister-ScheduledTask -TaskName $TaskName -Confirm:$false
    }
    Write-Host "Removed the '$TaskName' task. $PSScriptRoot and its files are left in place."
    exit 0
}

function Invoke-Icacls {
    & icacls.exe @args | Out-Null
    if ($LASTEXITCODE -ne 0) { throw "icacls $($args -join ' ') failed with exit code $LASTEXITCODE" }
}

function Read-Setting([string]$Prompt, [string]$Current) {
    while ($true) {
        $typed = Read-Host "$Prompt [$Current]"
        if (-not [string]::IsNullOrWhiteSpace($typed)) { return $typed.Trim() }
        if (-not [string]::IsNullOrWhiteSpace($Current)) { return $Current }
    }
}

function Read-SecretSetting([string]$Prompt, [string]$Current) {
    $keepHint = ''
    if ($Current) { $keepHint = ' (Enter keeps the saved one)' }
    while ($true) {
        $secure = Read-Host "$Prompt$keepHint" -AsSecureString
        $pointer = [Runtime.InteropServices.Marshal]::SecureStringToBSTR($secure)
        try { $typed = [Runtime.InteropServices.Marshal]::PtrToStringBSTR($pointer) } finally { [Runtime.InteropServices.Marshal]::ZeroFreeBSTR($pointer) }
        if ($typed) { return $typed }
        if ($Current) { return $Current }
    }
}

# SYSTEM runs the poller, so anyone who can edit it, or the config it trusts, runs code as SYSTEM.
Invoke-Icacls $PSScriptRoot /inheritance:r /grant:r "${Administrators}:(OI)(CI)F" "${System}:(OI)(CI)F" "${Users}:(OI)(CI)RX"

$config = [pscustomobject]@{ biotimeBaseUrl = 'http://127.0.0.1:8082'; biotimeUsername = ''; functionUrl = '' }
if (Test-Path $ConfigPath) { $config = Get-Content -Raw -Path $ConfigPath | ConvertFrom-Json }
$secrets = [pscustomobject]@{ biotimePassword = ''; syncSecret = '' }
if (Test-Path $SecretsPath) {
    $bytes = [Security.Cryptography.ProtectedData]::Unprotect([IO.File]::ReadAllBytes($SecretsPath), $null, [Security.Cryptography.DataProtectionScope]::LocalMachine)
    $secrets = [Text.Encoding]::UTF8.GetString($bytes) | ConvertFrom-Json
}

$newConfig = [ordered]@{
    biotimeBaseUrl = (Read-Setting 'BioTime address' $config.biotimeBaseUrl).TrimEnd('/')
    biotimeUsername = Read-Setting 'BioTime API username' $config.biotimeUsername
    functionUrl = Read-Setting 'recordFingerprintPunches URL' $config.functionUrl
}
$newSecrets = [ordered]@{
    biotimePassword = Read-SecretSetting 'BioTime API password' $secrets.biotimePassword
    syncSecret = Read-SecretSetting 'Fingerprint sync secret' $secrets.syncSecret
}

Set-Content -Path $ConfigPath -Value (ConvertTo-Json -InputObject $newConfig) -Encoding UTF8

if (-not (Test-Path $SecretsPath)) { New-Item -ItemType File -Path $SecretsPath | Out-Null }
Invoke-Icacls $SecretsPath /inheritance:r /grant:r "${Administrators}:F" "${System}:F"
$plain = [Text.Encoding]::UTF8.GetBytes((ConvertTo-Json -InputObject $newSecrets -Compress))
[IO.File]::WriteAllBytes($SecretsPath, [Security.Cryptography.ProtectedData]::Protect($plain, $null, [Security.Cryptography.DataProtectionScope]::LocalMachine))
Write-Host "Saved $ConfigPath and the encrypted $SecretsPath"

& powershell.exe -NoProfile -ExecutionPolicy Bypass -File $PollerPath check
if ($LASTEXITCODE -ne 0) {
    Write-Host 'The check failed, so the task was not registered. Fix the setting above and run this script again.'
    exit 1
}

$action = New-ScheduledTaskAction -Execute 'powershell.exe' -Argument "-NoProfile -NonInteractive -ExecutionPolicy Bypass -File `"$PollerPath`"" -WorkingDirectory $PSScriptRoot
# Without -RepetitionDuration the repetition never ends; [TimeSpan]::MaxValue is rejected on Windows 10.
$trigger = New-ScheduledTaskTrigger -Once -At (Get-Date) -RepetitionInterval (New-TimeSpan -Minutes 1)
$principal = New-ScheduledTaskPrincipal -UserId 'SYSTEM' -LogonType ServiceAccount -RunLevel Highest
# The poller stops itself before a minute passes; this limit only ends a run that hangs.
$settings = New-ScheduledTaskSettingsSet -MultipleInstances IgnoreNew -ExecutionTimeLimit (New-TimeSpan -Minutes 2) -StartWhenAvailable -AllowStartIfOnBatteries -DontStopIfGoingOnBatteries
Register-ScheduledTask -TaskName $TaskName -Action $action -Trigger $trigger -Principal $principal -Settings $settings -Force | Out-Null

$task = Get-ScheduledTask -TaskName $TaskName
$repetition = $task.Triggers[0].Repetition
if ($repetition.Interval -ne 'PT1M' -or -not [string]::IsNullOrEmpty($repetition.Duration) -or [string]$task.Settings.MultipleInstances -ne 'IgnoreNew') {
    throw "The '$TaskName' task was registered as interval=$($repetition.Interval) duration=$($repetition.Duration) instances=$($task.Settings.MultipleInstances); expected PT1M, no duration and IgnoreNew"
}
Start-ScheduledTask -TaskName $TaskName
Write-Host "The '$TaskName' task now runs every minute as SYSTEM. Logs: $(Join-Path $PSScriptRoot 'logs\fingerprint_sync.log')"
