
$RootPath = (Resolve-Path "$PSScriptRoot\..").Path
$SplitFilesPath   = Join-Path $RootPath "split_files"
$ScriptPath = Join-Path $RootPath "Scripts"
$ReCombinedDataPath = Join-Path $RootPath "package"
$ReCombinedFilePath = Join-Path $ReCombinedDataPath "nirsoft.zip"
$FileUtils = Join-Path $ScriptPath "FileUtils.ps1"

. "$FileUtils"

Merge-DataFile -DataPath $SplitFilesPath -DestinationPath $ReCombinedFilePath -Verbose