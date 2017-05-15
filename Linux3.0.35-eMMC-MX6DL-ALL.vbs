Set wshShell = CreateObject("WScript.shell")
wshShell.run "mfgtool2.exe -c ""linux"" -l ""Linux3035-eMMC"" -s ""board=sabresd"" -s ""sxdtb=sdb"" -s ""mmc=3"" "
Set wshShell = Nothing
