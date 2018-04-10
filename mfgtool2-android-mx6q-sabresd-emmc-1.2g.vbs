Set wshShell = CreateObject("WScript.shell")
wshShell.run "mfgtool2.exe -c ""linux"" -l ""eMMC-Android"" -s ""board=sabresd"" -s ""folder=sabresd"" -s ""soc=6q"" -s ""mmc=3"" -s ""ldo=-ldo"" -s ""data_type="""
Set wshShell = Nothing
