#!/system/bin/sh

term="/dev/pts/* "

if [ "$1" = "-p" ]; then
	link=`getprop sys.symlink.pty`
	rm ${link##${term}}
	ln -s $link;
	setprop sys.symlink.notify 0
fi
