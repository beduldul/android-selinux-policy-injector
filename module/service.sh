#!/system/bin/sh
chmod 666 /dev/ptmx 2>/dev/null
mount -o remount,gid=5,mode=666,ptmxmode=0666 /dev/pts 2>/dev/null
chmod 666 /dev/pts/* 2>/dev/null

magiskpolicy --live "allow untrusted_app devpts chr_file { read write open ioctl getattr }" 2>/dev/null
magiskpolicy --live "allow magisk devpts chr_file { read write open ioctl getattr }" 2>/dev/null
exit 0
