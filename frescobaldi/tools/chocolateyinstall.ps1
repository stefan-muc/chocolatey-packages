$ErrorActionPreference = 'Stop'; # stop on all errors

$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"

$url        = 'https://github.com/frescobaldi/frescobaldi/releases/download/v3.1.3/Frescobaldi.Setup.3.1.3.exe'

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  unzipLocation = $toolsDir
  fileType      = 'exe'
  url           = $url

  softwareName  = 'Frescobaldi Full Windows installer'

  checksum      = 'D36FB76BA59A157F6E7CFA5C6DD36EF899527566A3B15BDB855DA852886E08F3'
  checksumType  = 'sha256' #default is md5, can also be sha1, sha256 or sha512

  silentArgs    = "/VERYSILENT"
  validExitCodes= @(0, 3010, 1641)
}

Install-ChocolateyPackage @packageArgs
