kldstat
#kldload radeonkms
chmod -R 1777 /dev/dri
chmod -R 777 /dev/dri/*
chmod 777 /dev/ttyv8
/usr/local/etc/rc.d/avahi-daemon stop
/usr/local/etc/rc.d/dbus stop
/usr/local/etc/rc.d/gdm stop
/usr/local/etc/rc.d/hald stop
service devd stop
pkill X

/usr/local/etc/rc.d/dbus start
service devd start
/usr/local/etc/rc.d/hald start
/usr/local/etc/rc.d/avahi-daemon start
/usr/local/etc/rc.d/gdm start

#x11vnc
