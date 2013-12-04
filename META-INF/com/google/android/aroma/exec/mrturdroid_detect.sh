#!/sbin/sh

# exit 0 -> Internal error, no build.prop detected. Full wipe?
# exit 1 -> All fine, we're NOT running MrturDroid
# exit 2 -> All fine, we're running MrturDroid

mount -t auto /system > /dev/null 2>&1
if [ -e /system/build.prop ]; then
	# Good
	if [ `cat /system/build.prop | grep -i "MrturDroid" | wc -l` -gt 0 ]; then
		# Yay we're running MrturDroid"
		umount /system > /dev/null 2>&1
		exit 2
	else
		# We're not running MrturDroid
		umount /system > /dev/null 2>&1
		exit 1
	fi
else
	# Report internal error
	umount /system > /dev/null 2>&1
	exit 0
fi
exit 0