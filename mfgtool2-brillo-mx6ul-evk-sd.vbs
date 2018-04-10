Set wshShell = CreateObject("WScript.shell")
wshShell.run "mfgtool2.exe -c ""linux"" -l ""SDCard-Brillo"" -s ""6uluboot=evk"" -s ""6uldtb=14x14-evk"" -s ""folder=evk"" -s  ""soc=6ul"" -s ""mmc=1"" -s ""data_type="""
Set wshShell = Nothing
