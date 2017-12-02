$ErrorActionPreference = 'Stop'; # stop on all errors

$statementsToRun = "/C `sc config beep start= system`""
$validExitCodes= @(0, 1061)

Start-ChocolateyProcessAsAdmin $statementsToRun cmd -validExitCodes $validExitCodes
