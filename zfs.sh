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
exit 0;
