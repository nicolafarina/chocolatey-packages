
$ErrorActionPreference = 'Stop';
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://storage.emcosoftware.com/download/pingmonitor/PingMonitorFreeSetup.exe'

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  unzipLocation = $toolsDir
  fileType      = 'EXE'
  url           = $url

  softwareName  = 'EMCO Ping Monitor Free'

  checksum      = 'E716BF22525F56D37FC917A14DD4B608'
  checksumType  = 'md5'

  validExitCodes= @(0, 3010, 1641)
  silentArgs   = '/s'
}

Install-ChocolateyPackage @packageArgs










    








