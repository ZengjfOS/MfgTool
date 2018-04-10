Set wshShell = CreateObject("WScript.shell")
wshShell.run "mfgtool2.exe -c ""linux"" -l ""SDCard"" -s ""7duboot=12x12lpddr3arm2""  -s ""7ddtb=12x12-lpddr3-arm2"" -s ""mmc=0"" "
Set wshShell = Nothing
