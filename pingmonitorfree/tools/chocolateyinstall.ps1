
$ErrorActionPreference = 'Stop';
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://storage.emcosoftware.com/download/pingmonitor/PingMonitorFreeSetup.exe'
$url64      = $url

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  unzipLocation = $toolsDir
  fileType      = 'EXE'
  url           = $url
  url64bit      = $url64

  softwareName  = 'EMCO Ping Monitor Free'

  checksum      = 'bda07d6f16cdd466aa2db3dcefd7a3d1'
  checksumType  = 'md5'
  checksum64    = 'bda07d6f16cdd466aa2db3dcefd7a3d1'
  checksumType64= 'md5'

  validExitCodes= @(0, 3010, 1641)
  silentArgs   = '/s'
}

Install-ChocolateyPackage @packageArgs










    








