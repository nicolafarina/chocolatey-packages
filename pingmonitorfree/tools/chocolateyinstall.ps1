﻿
$ErrorActionPreference = 'Stop';
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://storage.emcosoftware.com/download/pingmonitor/PingMonitorFreeSetup.exe'

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  unzipLocation = $toolsDir
  fileType      = 'EXE'
  url           = $url

  softwareName  = 'EMCO Ping Monitor Free'

  checksum      = '15efb845e0cb687eb97373adf260e5fc'
  checksumType  = 'md5'

  validExitCodes= @(0, 3010, 1641)
  silentArgs   = '/s'
}

Install-ChocolateyPackage @packageArgs










    








