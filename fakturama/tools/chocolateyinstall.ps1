$ErrorActionPreference = 'Stop'; # stop on all errors

$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"

$url        = 'https://files.fakturama.info/release/v2.1.3/Installer_Fakturama_windows_x64_2.1.3c.zip'

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  unzipLocation = $toolsDir
  url           = $url

  checksum      = '77afa94606ab2f1118ce3325d2c8fcd6c4867d0cf60dfe7c16810f59860df35f'
  checksumType  = 'sha256' #default is md5, can also be sha1, sha256 or sha512
}

Install-ChocolateyZipPackage @packageArgs

$fileLocation = Join-Path $toolsDir 'Installer_Fakturama_windows-x64_2.1.3c.exe'

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  fileType      = 'exe'
  file          = $fileLocation

  softwareName  = 'Fakturama Full Windows installer'

  silentArgs    = "-q"
  validExitCodes= @(0)
}

Install-ChocolateyInstallPackage @packageArgs
