Set wshShell = CreateObject("WScript.shell")
wshShell.run "mfgtool2.exe -c ""linux"" -l ""SDCard-Android"" -s ""sxuboot=sabresd"" -s ""folder=sabresd"" -s ""board=sabresd"" -s ""soc=6sx"" -s ""sxdtb=sdb"" -s ""mmc=3"" -s ""data_type=-f2fs"""
Set wshShell = Nothing
