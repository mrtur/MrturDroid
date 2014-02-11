#!/sbin/sh

# ArchiDroid OTA
echo "# MrturDroid OTA" >> /system/build.prop
echo "# Please don't remove these lines, they're needed for OTA" >> /system/build.prop
echo "updateme.name=MrturDroid" >> /system/build.prop
echo "updateme.version=2.4.9" >> /system/build.prop
echo "updateme.otauid=mrturdroid" >> /system/build.prop
echo "updateme.urlcheck=https://dl.dropboxusercontent.com/u/7590919/MrturDroid/OTA/update_me_check.xml" >> /system/build.prop
echo "updateme.urlelement=https://dl.dropboxusercontent.com/u/7590919/MrturDroid/OTA/update_me_parts.xml" >> /system/build.prop
echo "updateme.reboottype=1" >> /system/build.prop
echo "updateme.downloaddir=/mnt/sdcard/downloadDir" >> /system/build.prop
echo "updateme.disableinstalledapps=1" >> /system/build.prop
echo "updateme.disablescripts=1" >> /system/build.prop
echo "# Thank you!" >> /system/build.prop