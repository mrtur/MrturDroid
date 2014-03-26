#!/sbin/sh

sed -i "s/ro.sf.lcd_density=268/ro.sf.lcd_density=$1/g" "/system/build.prop"
exit 0