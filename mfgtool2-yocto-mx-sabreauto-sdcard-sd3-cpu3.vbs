Set wshShell = CreateObject("WScript.shell")
wshShell.run "mfgtool2.exe -c ""linux"" -l ""SDCard"" -s ""board=sabreauto"" -s ""plus=p"" -s ""sxuboot=sabreauto""  -s ""sxdtb=sabreauto"" -s ""mmc=2"" "
Set wshShell = Nothing
