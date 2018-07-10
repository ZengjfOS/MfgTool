Set wshShell = CreateObject("WScript.shell")
wshShell.run "mfgtool2.exe -c ""linux"" -l ""SDCard"" -s ""sxuboot=17x17arm2""  -s ""sxdtb=17x17-arm2"" -s ""mmc=2"" "
Set wshShell = Nothing
