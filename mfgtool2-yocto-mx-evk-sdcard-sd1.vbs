Set wshShell = CreateObject("WScript.shell")
wshShell.run "mfgtool2.exe -c ""linux"" -l ""SDCard"" -s ""board=sabresd"" -s ""mmc=0"" -s ""6uluboot=evk"" -s ""6uldtb=14x14-evk"" "
Set wshShell = Nothing
