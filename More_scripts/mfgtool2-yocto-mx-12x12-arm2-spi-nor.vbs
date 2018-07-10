Set wshShell = CreateObject("WScript.shell")
wshShell.run "mfgtool2.exe -c ""linux"" -l ""Nor Flash"" -s ""board=sabreauto"" -s ""mmc=0"" -s ""nor=spi-nor"" -s ""nordtb=ecspi"" -s ""7duboot=12x12lpddr3arm2"" -s ""7ddtb=12x12-lpddr3-arm2-ecspi"" "
Set wshShell = Nothing
