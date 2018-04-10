Set wshShell = CreateObject("WScript.shell")
wshShell.run "mfgtool2.exe -c ""linux"" -l ""SDCard"" -s ""7duboot=19x19lpddr3arm2""  -s ""7ddtb=19x19-lpddr3-arm2"" -s ""mmc=0"" "
Set wshShell = Nothing
