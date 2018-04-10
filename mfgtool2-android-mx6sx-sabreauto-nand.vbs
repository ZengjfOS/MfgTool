Set wshShell = CreateObject("WScript.shell")
wshShell.run "mfgtool2.exe -c ""linux"" -l ""Nand-Android"" -s ""sxuboot=sabreauto""  -s ""sxdtb=sabreauto"" -s ""board=sabreauto"" -s ""folder=sabreauto"" -s ""soc=6sx"" -s ""nand=nand"" -s ""nanddtb=gpmi-weim"" -s ""part_uboot=1"" -s ""part_kernel=2"" -s ""part_dtb=3"" -s ""part_rootfs=4""  "
Set wshShell = Nothing
