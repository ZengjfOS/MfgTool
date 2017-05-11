Set wshShell = CreateObject("WScript.shell")
wshShell.run "mfgtool2.exe -c ""linux"" -l ""SDCard-Android"" -s ""sxuboot=sabresd""  -s ""folder=sabresd""  -s ""sxdtb=sdb"" -s ""mmc=3"" -s ""board=sabresd"" -s ""soc=6sx"" -s ""data_type="""
Set wshShell = Nothing
