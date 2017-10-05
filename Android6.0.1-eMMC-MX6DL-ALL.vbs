Set wshShell = CreateObject("WScript.shell")
wshShell.run "mfgtool2.exe -c ""linux"" -l ""Android60-eMMC"" -s ""board=sabresd""  -s ""folder=sabresd"" -s ""soc=6dl"" -s ""mmc=3"" -s ""data_type="""
Set wshShell = Nothing
