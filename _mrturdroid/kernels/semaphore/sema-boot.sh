#!/system/bin/sh

if [ -d /system/etc/init.d ]; then
	busybox run-parts /system/etc/init.d
fi;

sleep 1

busybox chmod 660 /dev/socket/pb
