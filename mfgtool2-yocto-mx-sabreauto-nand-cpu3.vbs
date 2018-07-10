Set wshShell = CreateObject("WScript.shell")
wshShell.run "mfgtool2.exe -c ""linux"" -l ""NAND Flash"" -s ""sxuboot=sabreauto""  -s ""sxdtb=sabreauto"" -s ""board=sabreauto"" -s ""plus=p"" -s ""nand=nand"" -s ""nanddtb=gpmi-weim"" -s ""part_uboot=2"" -s ""part_kernel=3"" -s ""part_dtb=4"" -s ""part_rootfs=5""   "
Set wshShell = Nothing
