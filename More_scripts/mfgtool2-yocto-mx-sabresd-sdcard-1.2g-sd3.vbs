Set wshShell = CreateObject("WScript.shell")
wshShell.run "mfgtool2.exe -c ""linux"" -l ""SDCard"" -s ""board=sabresd"" -s ""mmc=2"" -s ""sxuboot=sabresd"" -s ""sxdtb=sdb"" -s ""ldo=-ldo"" "
Set wshShell = Nothing
