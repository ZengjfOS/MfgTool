Set wshShell = CreateObject("WScript.shell")
wshShell.run "mfgtool2.exe -c ""linux"" -l ""eMMC"" -s ""sxdtb=sdb"" -s ""7duboot=12x12lpddr3arm2""  -s ""7ddtb=12x12-lpddr3-arm2"" -s ""mmc=2"" "
Set wshShell = Nothing
