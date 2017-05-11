Set wshShell = CreateObject("WScript.shell")
wshShell.run "mfgtool2.exe -c ""linux"" -l ""NAND Flash"" -s ""sxuboot=17x17arm2""  -s ""sxdtb=17x17-arm2"" -s ""board=sabreauto"" -s ""nand=nand"" -s ""nanddtb=gpmi-weim"" -s ""part_uboot=0"" -s ""part_kernel=1"" -s ""part_dtb=2"" -s ""part_rootfs=3""   "
Set wshShell = Nothing
