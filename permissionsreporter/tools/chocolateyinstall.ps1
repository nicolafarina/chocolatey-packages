
$ErrorActionPreference = 'Stop';
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://f000.backblazeb2.com/file/KeyMetricSoft/PermissionsReporter/pr-setup.exe'

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  unzipLocation = $toolsDir
  fileType      = 'EXE'
  url           = $url

  softwareName  = 'Permissions Reporter'

  checksum      = '7e35266afc3b6e0f80f7dd46ebb034db'
  checksumType  = 'md5'

  validExitCodes= @(0, 3010, 1641)
  silentArgs   = '/qn /quiet'
}

Install-ChocolateyPackage @packageArgs










    








