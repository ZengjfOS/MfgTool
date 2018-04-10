Set wshShell = CreateObject("WScript.shell")
wshShell.run "mfgtool2.exe -c ""linux"" -l ""eMMC-6dl-Linux"" -s ""board=sabresd"" -s ""mmc=3"" -s ""data_type="""
Set wshShell = Nothing
