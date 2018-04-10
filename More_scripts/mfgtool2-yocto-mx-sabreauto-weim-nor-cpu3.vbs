Set wshShell = CreateObject("WScript.shell")
wshShell.run "mfgtool2.exe -c ""linux"" -l ""Nor Flash"" -s ""board=sabreauto"" -s ""plus=p"" -s ""mmc=0"" -s ""nor=eim-nor"" -s ""nordtb=gpmi-weim"" -s ""7duboot=19x19lpddr3arm2"" -s ""seek=4"" "
Set wshShell = Nothing
