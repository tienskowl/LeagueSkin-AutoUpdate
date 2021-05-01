$url="http://leagueskin.net/p/download-mod-skin-2020-chn"
$res=Invoke-RestMethod -Uri $url
$reg="http://s3\.modskinlolvn\.com/ModSkin_\d+\.\d+(\.\d+)*\.zip"
$res -match $reg
$Matches[0]
Invoke-WebRequest -Uri $Matches[0] -OutFile "./hah.zip"
Remove-Item -Path ./*.exe
Expand-Archive -Path ./hah.zip -DestinationPath ./ -Force
Remove-Item -Path ./hah.zip -Force
Remove-Item -Path ./*.txt
./*.exe
