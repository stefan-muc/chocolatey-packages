$ErrorActionPreference = 'Stop'; # stop on all errors

$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"

$url        = 'https://github.com/frescobaldi/frescobaldi/releases/download/v3.3.0/Frescobaldi.Setup.3.3.0.exe'

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  unzipLocation = $toolsDir
  fileType      = 'exe'
  url           = $url

  softwareName  = 'Frescobaldi Full Windows installer'

  checksum      = '5547aa06f078be27bda1c2199a8bd143a6e4dd48944dbd3f9d85e762e7e69f8d'
  checksumType  = 'sha256' #default is md5, can also be sha1, sha256 or sha512

  silentArgs    = "/VERYSILENT"
  validExitCodes= @(0, 3010, 1641)
}

Install-ChocolateyPackage @packageArgs
