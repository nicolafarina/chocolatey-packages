
$ErrorActionPreference = 'Stop';
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64      = 'https://github.com/wavebox/waveboxapp/releases/download/v4.11.4/Install_Wavebox_4_11_4_x64.exe'

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  unzipLocation = $toolsDir
  fileType      = 'EXE'
  url64bit      = $url64

  softwareName  = 'Wavebox'

  checksum64    = '7c8362a6ae8ac1e185213d975e9059ef'
  checksumType64= 'md5'

  validExitCodes= @(0, 3010, 1641)
  silentArgs   = '/quiet'
}

Install-ChocolateyPackage @packageArgs










    








