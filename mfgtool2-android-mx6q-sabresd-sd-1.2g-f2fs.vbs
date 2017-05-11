Set wshShell = CreateObject("WScript.shell")
wshShell.run "mfgtool2.exe -c ""linux"" -l ""SDCard-Android"" -s ""board=sabresd"" -s ""folder=sabresd"" -s ""soc=6q"" -s ""mmc=2"" -s ""ldo=-ldo"" -s ""data_type=-f2fs"""
Set wshShell = Nothing
