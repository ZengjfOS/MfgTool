Set wshShell = CreateObject("WScript.shell")
wshShell.run "mfgtool2.exe -c ""linux"" -l ""Quad Nor Flash"" -s ""board=sabreauto"" -s ""mmc=0"" -s ""nor=spi-nor"" -s ""nordtb=ecspi"" -s ""7duboot=12x12lpddr3arm2"" -s ""sxnor=qspi2"" -s ""7dnor=qspi1"" -s ""7ddtb=12x12-lpddr3-arm2-qspi"" -s ""norconfig=qspi-nor-micron-n25q256a-config"" "
Set wshShell = Nothing
