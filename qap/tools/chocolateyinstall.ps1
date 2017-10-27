
$ErrorActionPreference = 'Stop';
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'http://www.quickaccesspopup.com/download/archives/quickaccesspopup-setup-8_5_3.exe'
$url64      = $url

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  unzipLocation = $toolsDir
  fileType      = 'EXE'
  url           = $url
  url64bit      = $url64

  softwareName  = 'Quick Access Popup'

  checksum      = 'FA4A52175C170EF3D3AB14E0CE05ECB4'
  checksumType  = 'md5'
  checksum64    = 'FA4A52175C170EF3D3AB14E0CE05ECB4'
  checksumType64= 'md5'

  validExitCodes= @(0, 3010, 1641)
  silentArgs   = '/VERYSILENT /SUPPRESSMSGBOXES /NORESTART /SP-'
}

Install-ChocolateyPackage @packageArgs










    








