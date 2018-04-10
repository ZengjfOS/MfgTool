Set wshShell = CreateObject("WScript.shell")
wshShell.run "mfgtool2.exe -c ""linux"" -l ""Quad Nor Flash"" -s ""board=sabreauto"" -s ""mmc=0"" -s ""nor=spi-nor"" -s ""nordtb=ecspi"" -s ""sxuboot=sabresd"" -s ""sxnor=qspi2"" -s ""7dnor=qspi1"" -s ""7ddtb=sdb-qspi"" -s ""sxdtb=sdb"" -s ""norconfig=qspi-nor-macronix-mx25l51245g-config"" "
Set wshShell = Nothing
