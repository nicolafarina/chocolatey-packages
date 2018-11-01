
$ErrorActionPreference = 'Stop';
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://apps.steamcore.se/Screamer/Releases/ScreamerSetup.exe'
$url64      = $url

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  unzipLocation = $toolsDir
  fileType      = 'EXE'
  url           = $url
  url64bit      = $url64

  softwareName  = 'Screamer Radio'

  checksum      = '5e3cb4a6f62a1e124c64e0bf52b8b554'
  checksumType  = 'md5'
  checksum64    = '5e3cb4a6f62a1e124c64e0bf52b8b554'
  checksumType64= 'md5'

  validExitCodes= @(0, 3010, 1641)
  silentArgs   = '/S'
}

Install-ChocolateyPackage @packageArgs










    








