
$ErrorActionPreference = 'Stop';
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64      = 'https://download.wavebox.app/stable/win/Install%20Wavebox%2010.147.47.2.exe'

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  unzipLocation = $toolsDir
  fileType      = 'EXE'
  url64bit      = $url64

  softwareName  = 'Wavebox'

  checksum64    = '2ef3ac049613ae3622fe856bda73f923'
  checksumType64= 'md5'

  validExitCodes= @(0, 3010, 1641)
  silentArgs   = '--disable-progress --do-not-launch-chrome'
}

Install-ChocolateyPackage @packageArgs










    








