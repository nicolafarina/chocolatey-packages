
$ErrorActionPreference = 'Stop';
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://www.gpsoft.com.au/DScripts/download.asp?file=Opus12/DOpusInstall.exe'
$url64      = $url

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  unzipLocation = $toolsDir
  fileType      = 'EXE'
  url           = $url
  url64bit      = $url64

  softwareName  = 'Directory Opus'

  checksum      = 'fa11c3c05e47a758176c96f9a99d6466'
  checksumType  = 'md5'
  checksum64    = 'fa11c3c05e47a758176c96f9a99d6466'
  checksumType64= 'md5'

  validExitCodes= @(0, 3010, 1641)
  silentArgs   = '/s /f1$toolsDirsetup.iss'
}

Install-ChocolateyPackage @packageArgs










    








