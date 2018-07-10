Set wshShell = CreateObject("WScript.shell")
wshShell.run "mfgtool2.exe -c ""linux"" -l ""Nor Flash"" -s ""board=sabreauto"" -s ""mmc=0"" -s ""nor=eim-nor"" -s ""nordtb=gpmi-weim"" -s ""7duboot=19x19lpddr3arm2"" -s ""7ddtb=19x19-lpddr3-arm2"" "
Set wshShell = Nothing
