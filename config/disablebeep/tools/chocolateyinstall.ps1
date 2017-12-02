$ErrorActionPreference = 'Stop'; # stop on all errors

$statementsToRun = "/C `sc stop beep && sc config beep start= disabled`""
$validExitCodes= @(0, 1061)

Start-ChocolateyProcessAsAdmin $statementsToRun cmd -validExitCodes $validExitCodes
