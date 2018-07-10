Set wshShell = CreateObject("WScript.shell")
wshShell.run "mfgtool2.exe -c ""linux"" -l ""SDCard-Android""  -s ""7duboot=sabresd""  -s ""folder=sabresd"" -s ""board=sabresd"" -s ""soc=7d"" -s ""7ddtb=sdb"" -s ""mmc=0"" -s ""data_type=-f2fs"""
Set wshShell = Nothing

