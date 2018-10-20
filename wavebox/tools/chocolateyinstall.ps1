
$ErrorActionPreference = 'Stop';
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://github.com/wavebox/waveboxapp/releases/download/v4.4.0/Install_Wavebox_4_4_0_x64.exe'
$url64      = $url

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  unzipLocation = $toolsDir
  fileType      = 'EXE'
  url           = $url
  url64bit      = $url64

  softwareName  = 'Wavebox'

  checksum      = '5d9c40e50b8a0263438a8e4dbc2c77d4'
  checksumType  = 'md5'
  checksum64    = '5d9c40e50b8a0263438a8e4dbc2c77d4'
  checksumType64= 'md5'

  validExitCodes= @(0, 3010, 1641)
  silentArgs   = '/quiet'
}

Install-ChocolateyPackage @packageArgs










    








