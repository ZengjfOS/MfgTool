Set wshShell = CreateObject("WScript.shell")
wshShell.run "mfgtool2.exe -c ""linux"" -l ""Nor Flash"" -s ""board=sabreauto"" -s ""mmc=0"" -s ""nor=spi-nor"" -s ""nordtb=ecspi"" -s ""6uluboot=14x14ddr3arm2"" -s ""6uldtb=14x14-ddr3-arm2"" -s ""7duboot=12x12lpddr3arm2"" -s ""7ddtb=12x12-lpddr3-arm2-ecspi"" -s ""nor_part=4"" "
Set wshShell = Nothing
