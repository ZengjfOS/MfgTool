Set wshShell = CreateObject("WScript.shell")
wshShell.run "mfgtool2.exe -c ""linux"" -l ""Nand-Android"" -s ""board=sabreauto"" -s ""sxuboot=sabreauto"" -s ""folder=sabreauto"" -s ""soc=6sx"" -s ""nand=nand"" -s ""nanddtb=gpmi-weim"" -s ""part_uboot=1"" -s ""part_kernel=2"" -s ""part_dtb=3"" -s ""part_rootfs=4"" -s ""sxdtb=sabreauto"""
Set wshShell = Nothing
