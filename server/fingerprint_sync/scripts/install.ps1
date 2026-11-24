[Diagnostics.CodeAnalysis.SuppressMessageAttribute('PSAvoidUsingWriteHost', '')]
param()

Set-StrictMode -Version Latest
$ErrorActionPreference = 'Stop'

$ServiceName = 'FingerprintSync'
$ReleaseBinaryName = 'fingerprint-sync-windows-x64.exe'
$InstallFolder = 'C:\fingerprint_sync'
$InstalledBinaryPath = Join-Path $InstallFolder 'fingerprint-sync.exe'
$InstalledNssmPath = Join-Path $InstallFolder 'nssm.exe'
$ConfigPath = Join-Path $InstallFolder 'config.json'
$LogsFolder = Join-Path $InstallFolder 'logs'
$LogPath = Join-Path $LogsFolder 'fingerprint_sync.log'
$SecretsFolder = Join-Path $InstallFolder 'secrets'
$BioTimePasswordPath = Join-Path $SecretsFolder 'biotime-password'
$SyncSecretPath = Join-Path $SecretsFolder 'fingerprint-sync-secret'
$SystemSid = '*S-1-5-18'
$AdministratorsSid = '*S-1-5-32-544'
$UsersSid = '*S-1-5-32-545'
$DefaultBioTimeUrl = 'http://127.0.0.1:8090'
$DefaultPollIntervalSeconds = 20
$DefaultCursorFile = 'cursor.json'

function Assert-Administrator {
    $principal = [Security.Principal.WindowsPrincipal][Security.Principal.WindowsIdentity]::GetCurrent()
    if (-not $principal.IsInRole([Security.Principal.WindowsBuiltInRole]::Administrator)) {
        throw 'Run this script from an administrator PowerShell (right-click PowerShell, Run as administrator).'
    }
}

function Assert-64BitWindows {
    if (-not [Environment]::Is64BitOperatingSystem) {
        throw "$ReleaseBinaryName needs 64-bit Windows."
    }
}

function Get-NssmPath {
    $nssmNextToScript = Join-Path $PSScriptRoot 'nssm.exe'
    if (Test-Path -LiteralPath $nssmNextToScript -PathType Leaf) {
        return $nssmNextToScript
    }
    $nssmOnPath = Get-Command 'nssm.exe' -CommandType Application -ErrorAction SilentlyContinue | Select-Object -First 1
    if ($nssmOnPath) {
        return $nssmOnPath.Path
    }
    if (Test-Path -LiteralPath $InstalledNssmPath -PathType Leaf) {
        return $InstalledNssmPath
    }
    throw "nssm.exe was not found next to this script, on the PATH or in $InstallFolder. Download NSSM from https://nssm.cc/download and put win64\nssm.exe from the zip in $PSScriptRoot."
}

function Get-ReleaseBinaryPath {
    $releaseBinary = Join-Path $PSScriptRoot $ReleaseBinaryName
    if (-not (Test-Path -LiteralPath $releaseBinary -PathType Leaf)) {
        throw "$ReleaseBinaryName was not found in $PSScriptRoot. Download it from the same GitHub release as this script and put it next to install.ps1."
    }
    return $releaseBinary
}

function Invoke-NativeCommand {
    param([string]$FilePath, [string[]]$Arguments)
    $ErrorActionPreference = 'Continue'
    $output = & $FilePath @Arguments 2>&1 | ForEach-Object { "$_" -replace "`0", '' }
    [pscustomobject]@{
        ExitCode = $LASTEXITCODE
        Output = ($output | Where-Object { $_ }) -join [Environment]::NewLine
    }
}

function Invoke-CheckedNativeCommand {
    param([string]$FilePath, [string[]]$Arguments)
    $result = Invoke-NativeCommand -FilePath $FilePath -Arguments $Arguments
    if ($result.ExitCode -ne 0) {
        throw "$(Split-Path -Leaf $FilePath) $($Arguments -join ' ') failed with exit code $($result.ExitCode):$([Environment]::NewLine)$($result.Output)"
    }
}

function Invoke-Nssm {
    param([string[]]$Arguments)
    Invoke-CheckedNativeCommand -FilePath $script:NssmPath -Arguments $Arguments
}

function Get-SyncService {
    Get-Service -Name $ServiceName -ErrorAction SilentlyContinue
}

function Stop-SyncServiceIfRunning {
    [CmdletBinding(SupportsShouldProcess)]
    param()
    $service = Get-SyncService
    if (-not $service -or $service.Status -eq 'Stopped' -or -not $PSCmdlet.ShouldProcess($ServiceName, 'Stop')) {
        return
    }
    Write-Host "Stopping the $ServiceName service..."
    Invoke-Nssm -Arguments 'stop', $ServiceName
    $service.WaitForStatus('Stopped', [TimeSpan]::FromSeconds(30))
}

function Initialize-ProtectedFolder {
    param([string]$Path, [string[]]$Grants)
    New-Item -ItemType Directory -Path $Path -Force | Out-Null
    Invoke-CheckedNativeCommand -FilePath 'icacls.exe' -Arguments (@($Path, '/inheritance:r', '/grant:r') + $Grants)
}

function Initialize-ProtectedInstallFolder {
    Initialize-ProtectedFolder -Path $InstallFolder -Grants "$($SystemSid):(OI)(CI)F", "$($AdministratorsSid):(OI)(CI)F", "$($UsersSid):(OI)(CI)RX"
}

function Install-Nssm {
    $isInstalledCopy = [IO.Path]::GetFullPath($script:NssmPath) -eq [IO.Path]::GetFullPath($InstalledNssmPath)
    if (-not $isInstalledCopy) {
        Copy-Item -LiteralPath $script:NssmPath -Destination $InstalledNssmPath -Force
        Unblock-File -LiteralPath $InstalledNssmPath
        Write-Host "Copied nssm.exe to $InstalledNssmPath."
    }
    $script:NssmPath = $InstalledNssmPath
}

function Copy-Binary {
    param([string]$ReleaseBinary)
    Copy-Item -LiteralPath $ReleaseBinary -Destination $InstalledBinaryPath -Force
    Unblock-File -LiteralPath $InstalledBinaryPath
    Write-Host "Copied $ReleaseBinaryName to $InstalledBinaryPath."
}

function Read-YesUnlessNo {
    param([string]$Question)
    while ($true) {
        $answer = (Read-Host "$Question [Y/n]").Trim()
        if ($answer -match '^(y|yes)?$') {
            return $true
        }
        if ($answer -match '^(n|no)$') {
            return $false
        }
        Write-Host 'Answer y or n.'
    }
}

function Read-RequiredValue {
    param([string]$Prompt, [string]$Default)
    while ($true) {
        $label = $Prompt
        if ($Default) {
            $label = "$Prompt [$Default]"
        }
        $answer = (Read-Host $label).Trim()
        if (-not $answer) {
            $answer = $Default
        }
        if ($answer) {
            return $answer
        }
        Write-Host 'A value is required.'
    }
}

function Test-HttpUrl {
    param([string]$Text)
    $uri = $null
    $isAbsoluteUri = [Uri]::TryCreate($Text, [UriKind]::Absolute, [ref]$uri)
    $isAbsoluteUri -and ($uri.Scheme -eq 'http' -or $uri.Scheme -eq 'https')
}

function Read-HttpUrl {
    param([string]$Prompt, [string]$Default)
    while ($true) {
        $answer = Read-RequiredValue -Prompt $Prompt -Default $Default
        if (Test-HttpUrl $answer) {
            return $answer
        }
        Write-Host 'Enter a URL starting with http:// or https://.'
    }
}

function Read-PositiveInteger {
    param([string]$Prompt, [string]$Default)
    while ($true) {
        $answer = Read-RequiredValue -Prompt $Prompt -Default $Default
        $number = 0
        if ([int]::TryParse($answer, [ref]$number) -and $number -gt 0) {
            return $number
        }
        Write-Host 'Enter a whole number greater than 0.'
    }
}

function Get-StoredConfig {
    if (-not (Test-Path -LiteralPath $ConfigPath -PathType Leaf)) {
        return $null
    }
    try {
        $config = [IO.File]::ReadAllText($ConfigPath) | ConvertFrom-Json
        $pollIntervalSeconds = $DefaultPollIntervalSeconds
        if ($config.PSObject.Properties['pollIntervalSeconds']) {
            $pollIntervalSeconds = $config.pollIntervalSeconds
        }
        $cursorFile = $DefaultCursorFile
        if ($config.PSObject.Properties['cursorFile']) {
            $cursorFile = $config.cursorFile
        }
        return [pscustomobject]@{
            BioTimeUrl = [string]$config.biotime.baseUrl
            BioTimeUsername = [string]$config.biotime.username
            FunctionUrl = [string]$config.recordFingerprintPunches.url
            PollIntervalSeconds = [string]$pollIntervalSeconds
            CursorFile = [string]$cursorFile
        }
    }
    catch {
        Write-Warning "Could not read $ConfigPath ($($_.Exception.Message)). Enter the settings again."
        return $null
    }
}

function Show-StoredConfig {
    param($Settings)
    Write-Host "Current settings in $($ConfigPath):"
    Write-Host "  BioTime URL:           $($Settings.BioTimeUrl)"
    Write-Host "  BioTime API username:  $($Settings.BioTimeUsername)"
    Write-Host "  Function URL:          $($Settings.FunctionUrl)"
    Write-Host "  Poll interval seconds: $($Settings.PollIntervalSeconds)"
}

function Read-NewConfig {
    param($Defaults)
    $default = $Defaults
    if (-not $default) {
        $default = [pscustomobject]@{
            BioTimeUrl = $DefaultBioTimeUrl
            BioTimeUsername = ''
            FunctionUrl = ''
            PollIntervalSeconds = [string]$DefaultPollIntervalSeconds
            CursorFile = $DefaultCursorFile
        }
    }
    [pscustomobject]@{
        BioTimeUrl = Read-HttpUrl -Prompt 'BioTime URL' -Default $default.BioTimeUrl
        BioTimeUsername = Read-RequiredValue -Prompt 'BioTime API username' -Default $default.BioTimeUsername
        FunctionUrl = Read-HttpUrl -Prompt 'recordFingerprintPunches function URL' -Default $default.FunctionUrl
        PollIntervalSeconds = Read-PositiveInteger -Prompt 'Poll interval in seconds' -Default $default.PollIntervalSeconds
        CursorFile = $default.CursorFile
    }
}

function Save-Config {
    param($Settings)
    $config = [ordered]@{
        biotime = [ordered]@{
            baseUrl = $Settings.BioTimeUrl
            username = $Settings.BioTimeUsername
        }
        recordFingerprintPunches = [ordered]@{
            url = $Settings.FunctionUrl
        }
        cursorFile = $Settings.CursorFile
        pollIntervalSeconds = [int]$Settings.PollIntervalSeconds
    }
    [IO.File]::WriteAllText($ConfigPath, ($config | ConvertTo-Json -Depth 5))
    Write-Host "Saved $ConfigPath."
}

function Save-ConfigUnlessKept {
    $storedConfig = Get-StoredConfig
    if ($storedConfig) {
        Show-StoredConfig $storedConfig
        if (Read-YesUnlessNo 'Keep these settings?') {
            return
        }
    }
    Save-Config (Read-NewConfig -Defaults $storedConfig)
}

function Save-Secret {
    param([string]$Prompt, [string]$Path)
    while ($true) {
        $typed = [Net.NetworkCredential]::new('', (Read-Host $Prompt -AsSecureString)).Password
        $retyped = [Net.NetworkCredential]::new('', (Read-Host "$Prompt (again)" -AsSecureString)).Password
        $isEmpty = -not $typed
        $isAccepted = -not $isEmpty -and ($typed -ceq $retyped)
        if ($isAccepted) {
            [IO.File]::WriteAllText($Path, $typed)
        }
        Remove-Variable typed, retyped
        if ($isAccepted) {
            return
        }
        if ($isEmpty) {
            Write-Host 'It cannot be empty.'
        }
        else {
            Write-Host 'The two entries differ. Type it again.'
        }
    }
}

function Test-SecretsStored {
    (Test-Path -LiteralPath $BioTimePasswordPath -PathType Leaf) -and (Test-Path -LiteralPath $SyncSecretPath -PathType Leaf)
}

function Save-SecretsUnlessKept {
    if ((Test-SecretsStored) -and (Read-YesUnlessNo 'Keep the stored BioTime password and sync secret?')) {
        return
    }
    Initialize-ProtectedFolder -Path $SecretsFolder -Grants "$($SystemSid):(OI)(CI)R", "$($AdministratorsSid):(OI)(CI)F"
    Save-Secret -Prompt 'BioTime API password' -Path $BioTimePasswordPath
    Save-Secret -Prompt 'Sync secret (the FINGERPRINT_SYNC_SECRET function secret)' -Path $SyncSecretPath
    Write-Host "Saved both secrets in $SecretsFolder, readable only by SYSTEM and administrators."
}

function Invoke-SyncCheck {
    param([string]$Binary)
    $env:BIOTIME_PASSWORD_FILE = $BioTimePasswordPath
    $env:FINGERPRINT_SYNC_SECRET_FILE = $SyncSecretPath
    try {
        Invoke-NativeCommand -FilePath $Binary -Arguments 'check', '--config', $ConfigPath
    }
    finally {
        Remove-Item Env:\BIOTIME_PASSWORD_FILE, Env:\FINGERPRINT_SYNC_SECRET_FILE -ErrorAction SilentlyContinue
    }
}

function Assert-SuccessfulSyncCheck {
    param([string]$Binary)
    Write-Host 'Checking that BioTime and the function accept these settings...'
    $check = Invoke-SyncCheck -Binary $Binary
    if ($check.ExitCode -ne 0) {
        throw @"
The check failed. The running $ServiceName service, if any, was left as it was, and the new version was not installed:
$($check.Output)

The BioTime URL, username or password, the function URL or the sync secret may be wrong, or BioTime or the function could not be reached.
Run this script again and answer n to re-enter them.
"@
    }
    Write-Host $check.Output
}

function Clear-AppParametersIfSet {
    $parametersKey = "HKLM:\SYSTEM\CurrentControlSet\Services\$ServiceName\Parameters"
    $parameters = Get-ItemProperty -LiteralPath $parametersKey -Name 'AppParameters' -ErrorAction SilentlyContinue
    if ($parameters -and $parameters.AppParameters) {
        Invoke-Nssm -Arguments 'reset', $ServiceName, 'AppParameters'
    }
}

function Install-SyncService {
    New-Item -ItemType Directory -Path $LogsFolder -Force | Out-Null
    if (Get-SyncService) {
        Invoke-CheckedNativeCommand -FilePath 'sc.exe' -Arguments 'config', $ServiceName, 'binPath=', ('"{0}"' -f $InstalledNssmPath)
    }
    else {
        Invoke-Nssm -Arguments 'install', $ServiceName, $InstalledBinaryPath
    }
    Invoke-Nssm -Arguments 'set', $ServiceName, 'Application', $InstalledBinaryPath
    Clear-AppParametersIfSet
    Invoke-Nssm -Arguments 'set', $ServiceName, 'AppDirectory', $InstallFolder
    Invoke-Nssm -Arguments 'set', $ServiceName, 'AppEnvironmentExtra', "BIOTIME_PASSWORD_FILE=$BioTimePasswordPath", "FINGERPRINT_SYNC_SECRET_FILE=$SyncSecretPath"
    Invoke-Nssm -Arguments 'set', $ServiceName, 'AppStdout', $LogPath
    Invoke-Nssm -Arguments 'set', $ServiceName, 'AppStderr', $LogPath
    Invoke-Nssm -Arguments 'set', $ServiceName, 'AppRotateFiles', '1'
    Invoke-Nssm -Arguments 'set', $ServiceName, 'AppRotateOnline', '1'
    Invoke-Nssm -Arguments 'set', $ServiceName, 'AppRotateBytes', '10485760'
}

function Start-SyncService {
    [CmdletBinding(SupportsShouldProcess)]
    param()
    if (-not $PSCmdlet.ShouldProcess($ServiceName, 'Start')) {
        return
    }
    Invoke-Nssm -Arguments 'start', $ServiceName
    Write-Host ''
    Write-Host "The $ServiceName service is running. Its log is $LogPath."
    Write-Host "Restart it with: $InstalledNssmPath restart $ServiceName"
}

try {
    Assert-Administrator
    Assert-64BitWindows
    $script:NssmPath = Get-NssmPath
    $releaseBinary = Get-ReleaseBinaryPath
    Unblock-File -LiteralPath $releaseBinary
    Initialize-ProtectedInstallFolder
    Save-ConfigUnlessKept
    Save-SecretsUnlessKept
    Assert-SuccessfulSyncCheck -Binary $releaseBinary
    Stop-SyncServiceIfRunning
    Install-Nssm
    Copy-Binary -ReleaseBinary $releaseBinary
    Install-SyncService
    Start-SyncService
}
catch {
    Write-Host ''
    Write-Host $_.Exception.Message -ForegroundColor Red
    exit 1
}
