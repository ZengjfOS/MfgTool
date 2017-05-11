Set wshShell = CreateObject("WScript.shell")
wshShell.run "mfgtool2.exe -c ""linux"" -l ""SDCard-Android"" -s ""folder=evk"" -s ""soc=6sl"" -s ""mmc=1"" -s ""data_type=-f2fs"""
Set wshShell = Nothing
