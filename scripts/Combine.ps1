
$RootPath = (Resolve-Path "$PSScriptRoot\..").Path
$SplitFilesPath   = Join-Path $RootPath "split_files"
$ScriptPath = Join-Path $RootPath "Scripts"
$ReCombinedDataPath = Join-Path $RootPath "recombined_files"
$ReCombinedFilePath = Join-Path $ReCombinedDataPath "File.pdf"
$FileUtils = Join-Path $ScriptPath "FileUtils.ps1"

. "$FileUtils"

Merge-DataFile -DataPath $SplitFilesPath -DestinationPath $ReCombinedFilePath -Verbose