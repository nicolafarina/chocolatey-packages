
$ErrorActionPreference = 'Stop';
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://cdn.gpsoft.com.au/Opus12/DOpusInstall.exe'

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  unzipLocation = $toolsDir
  fileType      = 'EXE'
  url           = $url

  softwareName  = 'Directory Opus'

  checksum      = 'c378a5fba3ffd2becddc2a0aad8130fe'
  checksumType  = 'md5'

  validExitCodes= @(0, 3010, 1641)
  silentArgs   = "/s /f1${toolsDir}\install.iss"
}

Install-ChocolateyPackage @packageArgs










    








