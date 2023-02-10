#!/bin/bash
#
# Copyright (c) 2019-2020 P3TERX <https://p3terx.com>
#
# This is free software, licensed under the MIT License.
# See /LICENSE for more information.
#
# https://github.com/P3TERX/Actions-OpenWrt
# File name: diy-part2.sh
# Description: OpenWrt DIY script part 2 (After Update feeds)
#

# 自定义默认网关，后方的192.168.10.1即是可自定义的部分
sed -i 's/192.168.1.1/192.168.10.1/g' package/base-files/files/bin/config_generate
# 固件版本名称自定义
sed -i "s/DISTRIB_DESCRIPTION=.*/DISTRIB_DESCRIPTION='ImmortalWrtWrt By IraXu ($(date +%Y-%m-%d %H:%M)) '/g" package/base-files/files/etc/openwrt_release
