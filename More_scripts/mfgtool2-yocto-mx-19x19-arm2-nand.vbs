Set wshShell = CreateObject("WScript.shell")
wshShell.run "mfgtool2.exe -c ""linux"" -l ""NAND Flash"" -s ""sxuboot=19x19ddr3arm2""  -s ""sxdtb=19x19-arm2"" -s ""board=sabreauto"" -s ""nand=nand"" -s ""nanddtb=gpmi-weim"" -s ""7duboot=19x19lpddr3arm2"" -s ""7ddtb=19x19-lpddr3-arm2"" -s ""part_uboot=1"" -s ""part_kernel=2"" -s ""part_dtb=3"" -s ""part_rootfs=4"" "
Set wshShell = Nothing
