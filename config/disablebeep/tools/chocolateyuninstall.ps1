$ErrorActionPreference = 'Stop'; # stop on all errors

$statementsToRun = "/C `sc config beep start= system`""
$validExitCodes= @(0, 1061, 1062)

Start-ChocolateyProcessAsAdmin $statementsToRun cmd -validExitCodes $validExitCodes
