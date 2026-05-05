
$ErrorActionPreference = 'Stop';
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://www.permissionsreporter.com/Content/download/pr-setup.exe'

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  unzipLocation = $toolsDir
  fileType      = 'EXE'
  url           = $url

  softwareName  = 'Permissions Reporter'

  checksum      = 'bf3cd8c92a2a889012dcb395ae45c460'
  checksumType  = 'md5'

  validExitCodes= @(0, 3010, 1641)
  silentArgs   = '/qn /quiet'
}

Install-ChocolateyPackage @packageArgs










    








