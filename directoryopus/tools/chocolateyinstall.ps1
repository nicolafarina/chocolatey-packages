
$ErrorActionPreference = 'Stop';
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://cdn.gpsoft.com.au/Opus12/DOpusInstall.exe'

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  unzipLocation = $toolsDir
  fileType      = 'EXE'
  url           = $url

  softwareName  = 'Directory Opus'

  checksum      = '6ebb4a29b201635a776d613a508d9d23'
  checksumType  = 'md5'

  validExitCodes= @(0, 3010, 1641)
  silentArgs   = "/s /f1${toolsDir}\install.iss"
}

Install-ChocolateyPackage @packageArgs










    








