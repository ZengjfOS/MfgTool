Set wshShell = CreateObject("WScript.shell")
wshShell.run "mfgtool2.exe -c ""linux"" -l ""Quad Nor Flash"" -s ""board=sabreauto"" -s ""mmc=0"" -s ""nor=spi-nor"" -s ""nordtb=ecspi"" -s ""sxuboot=sabresd"" -s ""sxnor=qspi2"" -s ""7dnor=qspi1"" -s ""sxdtb=sdb"" -s ""6uluboot=9x9evk"" -s ""6uldtb=9x9-evk"" -s ""6ulnor=qspi1"" -s ""norconfig=qspi-nor-micron-n25q256a-config"" "
Set wshShell = Nothing

'norconfig depends on the QSPI chip mounted on board, for i.MX6SX TO1.1 board, norconfig=qspi-nor-spansion-s25fl128s-config
