
$RootPath = (Resolve-Path "$PSScriptRoot\..").Path
$DataPath =  Join-Path $RootPath "package"
$DataFile =  Join-Path $DataPath "nirsoft.zip"
$OutPath  =  Join-Path $RootPath "split_files"
$ScriptPath = Join-Path $RootPath "Scripts"
$FileUtils = Join-Path $ScriptPath "FileUtils.ps1"

. "$FileUtils"

 Split-DataFile -FilePath $DataFile -DestinationPath $OutPath -Size 3MB  -Verbose