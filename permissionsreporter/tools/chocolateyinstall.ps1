
$ErrorActionPreference = 'Stop';
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://s3.amazonaws.com/KeyMetricSoft/Permissions+Reporter/pm-setup.exe'
$url64      = $url

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  unzipLocation = $toolsDir
  fileType      = 'EXE'
  url           = $url
  url64bit      = $url64

  softwareName  = 'Permissions Reporter'

  checksum      = 'e11b3b7d4caf80bfa9f88c1483742be0'
  checksumType  = 'md5'
  checksum64    = 'e11b3b7d4caf80bfa9f88c1483742be0'
  checksumType64= 'md5'

  validExitCodes= @(0, 3010, 1641)
  silentArgs   = '/qn /quiet'
}

Install-ChocolateyPackage @packageArgs










    








