#!/system/bin/sh
PRELOAD_DEST=/data/app
PRELOAD_FLAG=${PRELOAD_DEST}/.preloadapp
PRELOAD_SOURCE=/system/preloadapp

if [ ! -d ${PRELOAD_DEST} ]
then
	mkdir -p ${PRELOAD_DEST}
fi

if [ ! -f ${PRELOAD_FLAG} ]
then
	echo "abcd" > ${PRELOAD_FLAG}
fi

