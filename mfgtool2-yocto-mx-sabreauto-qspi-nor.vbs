Set wshShell = CreateObject("WScript.shell")
wshShell.run "mfgtool2.exe -c ""linux"" -l ""Quad Nor Flash"" -s ""board=sabreauto"" -s ""mmc=0"" -s ""nor=spi-nor"" -s ""nordtb=ecspi"" -s ""sxuboot=sabreauto"" -s ""sxnor=qspi1"" -s ""7dnor=qspi1"" -s ""sxdtb=sabreauto"" -s ""norconfig=qspi-nor-micron-n25q256a-config"" "
Set wshShell = Nothing
