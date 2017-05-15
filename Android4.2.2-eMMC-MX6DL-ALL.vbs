Set wshShell = CreateObject("WScript.shell")
wshShell.run "mfgtool2.exe -c ""linux"" -l ""Android42-eMMC"" -s ""board=sabresd""  -s ""folder=sabresd"" -s ""soc=6dl"" -s ""mmc=3"" -s ""data_type="""
Set wshShell = Nothing
