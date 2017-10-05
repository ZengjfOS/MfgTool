#!/bin/bash

# partition size in MB
BOOTLOAD_RESERVE=8
BOOT_ROM_SIZE=16
SYSTEM_ROM_SIZE=800
CACHE_SIZE=512
RECOVERY_ROM_SIZE=16
DEVICE_SIZE=8
MISC_SIZE=6
DATAFOOTER_SIZE=2

help() {

bn=`basename $0`
cat << EOF
usage $bn <option> device_node

options:
  -h				displays this help message
  -s				only get partition size
  -np 				not partition.
  -f soc_name			flash android image.
EOF

}

# parse command line
moreoptions=1
node="na"
soc_name=""
cal_only=0
flash_images=0
not_partition=0
not_format_fs=0
while [ "$moreoptions" = 1 -a $# -gt 0 ]; do
	case $1 in
	    -h) help; exit ;;
	    -s) cal_only=1 ;;
	    -f) flash_images=1 ;;
	    -np) not_partition=1 ;;
	    -nf) not_format_fs=1 ;;
	    *)  moreoptions=0; node=$1 ;;
	esac
	[ "$moreoptions" = 0 ] && [ $# -gt 1 ] && help && exit
	[ "$moreoptions" = 1 ] && shift
done

if [ ! -e ${node} ]; then
	help
	exit
fi


# call sfdisk to create partition table
# get total card size
seprate=40
total_size=`sfdisk -s ${node}`
total_size=`expr ${total_size} / 1024`
boot_rom_sizeb=`expr ${BOOT_ROM_SIZE} + ${BOOTLOAD_RESERVE}`
extend_size=`expr ${SYSTEM_ROM_SIZE} + ${CACHE_SIZE} + ${DEVICE_SIZE} + ${MISC_SIZE} + ${DATAFOOTER_SIZE} + ${seprate}`
data_size=`expr ${total_size} - ${boot_rom_sizeb} - ${RECOVERY_ROM_SIZE} - ${extend_size} + ${seprate}`

# create partitions
if [ "${cal_only}" -eq "1" ]; then
cat << EOF
BOOT   : ${boot_rom_sizeb}MB
RECOVERY: ${RECOVERY_ROM_SIZE}MB
SYSTEM : ${SYSTEM_ROM_SIZE}MB
CACHE  : ${CACHE_SIZE}MB
DATA   : ${data_size}MB
MISC   : ${MISC_SIZE}MB
DEVICE : ${DEVICE_SIZE}MB
DATAFOOTER : ${DATAFOOTER_SIZE}MB
EOF
exit
fi

function format_android
{
    echo "formating android data partition"
    mkfs.ext4 -E nodiscard -b 4096 -m 0 -O ^flex_bg,^uninit_bg ${node}${part}4 -L data
}


# destroy the partition table
dd if=/dev/zero of=${node} bs=1024 count=1

sfdisk --force -uM ${node} << EOF
,${boot_rom_sizeb},83
,${RECOVERY_ROM_SIZE},83
,${extend_size},5
,${data_size},83
,${SYSTEM_ROM_SIZE},83
,${CACHE_SIZE},83
,${DEVICE_SIZE},83
,${MISC_SIZE},83
,${DATAFOOTER_SIZE},83
EOF

# adjust the partition reserve for bootloader.
# if you don't put the uboot on same device, you can remove the BOOTLOADER_ERSERVE
# to have 8M space.
# the minimal sylinder for some card is 4M, maybe some was 8M
# just 8M for some big eMMC 's sylinder
sfdisk --force -uM ${node} -N1 << EOF
${BOOTLOAD_RESERVE},${BOOT_ROM_SIZE},83
EOF

# format the SDCARD/DATA/CACHE partition
part=""
echo ${node} | grep mmcblk > /dev/null
if [ "$?" -eq "0" ]; then
	part="p"
fi

format_android


# For MFGTool Notes:
# MFGTool use mksdcard-android.tar store this script
# if you want change it.
# do following:
#   tar xf mksdcard-android.sh.tar
#   vi mksdcard-android.sh 
#   [ edit want you want to change ]
#   rm mksdcard-android.sh.tar; tar cf mksdcard-android.sh.tar mksdcard-android.sh
