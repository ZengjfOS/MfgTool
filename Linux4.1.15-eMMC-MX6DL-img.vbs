Set wshShell = CreateObject("WScript.shell")
wshShell.run "mfgtool2.exe -c ""linux"" -l ""emmc-6dl-img"" -s ""board=sabresd"" -s ""mmc=3"" -s ""data_type="""
Set wshShell = Nothing
