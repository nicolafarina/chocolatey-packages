
$ErrorActionPreference = 'Stop';
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://storage.emcosoftware.com/download/pingmonitor/PingMonitorFreeSetup.exe'

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  unzipLocation = $toolsDir
  fileType      = 'EXE'
  url           = $url

  softwareName  = 'EMCO Ping Monitor Free'

  checksum      = 'b87400b884f7b1b6eb97b0cf44c2cf4d'
  checksumType  = 'md5'

  validExitCodes= @(0, 3010, 1641)
  silentArgs   = '/s'
}

Install-ChocolateyPackage @packageArgs










    








