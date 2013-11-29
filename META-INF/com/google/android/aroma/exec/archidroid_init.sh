#!/sbin/sh

# Mounts
# Used by ArchiDroid for providing universal device-based paths
fs="ext4" # Filesystem of blocks [USED]
boot="/dev/block/mmcblk0p6" # ROM's kernel image, not used
recovery="/dev/block/mmcblk0p7" # Recovery image, not used
radio="/dev/block/mmcblk0p1" # Modem image, not used
cache="/dev/block/mmcblk0p22" # Temporary cache, not used
system="/dev/block/mmcblk0p21" # Main system partition, [USED]
data="/dev/block/mmcblk0p23" # Internal SD Card, [USED]
extsd="/dev/block/mmcblk1p1" # External SD Card, not used

AD="/data/media/0/ArchiDroid"

# Prepare all used mounts
# Firstly try to mount automatically, eventually fallback to predefined blocks
mount -t auto /data > /dev/null 2>&1
mount -t $fs $data /data > /dev/null 2>&1
mount -t auto /system > /dev/null 2>&1
mount -t $fs $system /system > /dev/null 2>&1

# Init
mkdir -p $AD
mkdir -p $AD/AromaPreset/slim

exit 0