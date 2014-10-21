#!/system/bin/sh
if [ -f /system/etc/recovery-transform.sh ]; then
  exec sh /system/etc/recovery-transform.sh 8929280 afe45518ab67f4a1f5b6c589342ed505b3df55f0 6703104 2f34471eb247fb745c56f261eac07efb055a7c6e
fi

if ! applypatch -c EMMC:/dev/block/platform/msm_sdcc.1/by-name/recovery:8929280:afe45518ab67f4a1f5b6c589342ed505b3df55f0; then
  log -t recovery "Installing new recovery image"
  applypatch -b /system/etc/recovery-resource.dat EMMC:/dev/block/platform/msm_sdcc.1/by-name/boot:6703104:2f34471eb247fb745c56f261eac07efb055a7c6e EMMC:/dev/block/platform/msm_sdcc.1/by-name/recovery afe45518ab67f4a1f5b6c589342ed505b3df55f0 8929280 2f34471eb247fb745c56f261eac07efb055a7c6e:/system/recovery-from-boot.p
else
  log -t recovery "Recovery image already installed"
fi
