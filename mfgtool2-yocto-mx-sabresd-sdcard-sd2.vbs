Set wshShell = CreateObject("WScript.shell")
wshShell.run "mfgtool2.exe -c ""linux"" -l ""SDCard"" -s ""board=sabresd"" -s ""mmc=1"" -s ""sxuboot=sabresd"" -s ""sxdtb=sdb"" "
Set wshShell = Nothing
