Set wshShell = CreateObject("WScript.shell")
wshShell.run "mfgtool2.exe -c ""linux"" -l ""eMMC"" -s ""sxdtb=sdb"" -s ""mmc=0"" -s ""6uluboot=14x14ddr3arm2"" -s ""6uldtb=14x14-ddr3-arm2"" "
Set wshShell = Nothing
