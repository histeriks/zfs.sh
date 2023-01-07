#!/bin/bash

echo -e "\e[93mYour ZFS pool name?\e[0m"; read ZPOOL

zfs set compression=on $ZPOOL
zfs set compression=lz4 $ZPOOL
zfs set primarycache=all $ZPOOL
zfs set atime=off $ZPOOL
zfs set relatime=off $ZPOOL
zfs set checksum=on $ZPOOL
zfs set dedup=off $ZPOOL
zfs set xattr=sa $ZPOOL

# zfs create -V 8G -b 4096 -o logbias=throughput -o sync=always -o primarycache=metadata -o com.sun:auto-snapshot=false $ZPOOL/swap
# mkswap -f /dev/zvol/$ZPOOL/swap
# swapon /dev/zvol/$ZPOOL/swap
# cat "/dev/zvol/$ZPOOL/swap none swap discard 0 0" >> /etc/fstab
# echo "Partition optimized for MySQL/PostgreSQL"
# zfs create -o recordsize=8K -o primarycache=metadata -o mountpoint=/rdbms -o logbias=throughput $ZPOOL/rdbms

exit 0;
