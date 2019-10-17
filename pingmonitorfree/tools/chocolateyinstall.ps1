
$ErrorActionPreference = 'Stop';
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://storage.emcosoftware.com/download/pingmonitor/PingMonitorFreeSetup.exe'

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  unzipLocation = $toolsDir
  fileType      = 'EXE'
  url           = $url

  softwareName  = 'EMCO Ping Monitor Free'

  checksum      = 'bfa8c024b4444ea8f66a5ce325a245e6'
  checksumType  = 'md5'

  validExitCodes= @(0, 3010, 1641)
  silentArgs   = '/s'
}

Install-ChocolateyPackage @packageArgs










    








