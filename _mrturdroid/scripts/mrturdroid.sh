#!/sbin/sh

AD="/data/media/0/MrturDroid"
touch /data/ARCHIDROID_DONT_REMOVE_ME

if [ ! -d /data/media/0 ]; then
	if [ -f /data/media/0 ]; then
		rm -f /data/media/0
	fi
	cd /data/media
	FILES=`ls`
	mkdir -p /data/media/0
	
	for i in $FILES; do
		mv "$i" 0/
	done
fi

if [ ! -d $AD ]; then
	mkdir -p $AD
fi

rm -f $AD/INSTALL
rm -f $AD/UPDATE
rm -f $AD/FORCE

exit 0
