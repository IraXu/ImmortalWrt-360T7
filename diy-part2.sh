#!/bin/bash

# Modify default IP
sed -i 's/192.168.1.1/192.168.77.1/g' ./package/base-files/files/bin/config_generate
sed -i 's/hostname='ImmortalWrt'/hostname='360T7'/g' ./package/base-files/files/bin/config_generate
sed -i 's/DISTRIB_DESCRIPTION=.*/DISTRIB_DESCRIPTION='ImmortalWrt By IraXu $(date +"%Y%m%d")'/g' ./package/base-files/files/etc/openwrt_release
