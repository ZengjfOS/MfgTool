Set wshShell = CreateObject("WScript.shell")
wshShell.run "mfgtool2.exe -c ""linux"" -l ""SDCard"" -s ""board=sabresd"" -s ""mmc=1"" -s ""6uluboot=9x9evk"" -s ""6uldtb=9x9-evk"" "
Set wshShell = Nothing
