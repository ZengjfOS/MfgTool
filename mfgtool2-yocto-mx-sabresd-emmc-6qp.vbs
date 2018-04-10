Set wshShell = CreateObject("WScript.shell")
wshShell.run "mfgtool2.exe -c ""linux"" -l ""eMMC"" -s ""board=sabresd"" -s ""sxdtb=sdb"" -s ""mmc=3"" -s ""plus=p"" "
Set wshShell = Nothing
