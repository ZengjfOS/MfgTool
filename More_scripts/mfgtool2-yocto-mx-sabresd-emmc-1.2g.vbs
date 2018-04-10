Set wshShell = CreateObject("WScript.shell")
wshShell.run "mfgtool2.exe -c ""linux"" -l ""eMMC"" -s ""board=sabresd"" -s ""mmc=3"" -s ""ldo=-ldo"" -s ""sxdtb=sdb"" "
Set wshShell = Nothing
