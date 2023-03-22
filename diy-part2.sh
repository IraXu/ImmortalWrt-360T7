#!/bin/bash
###
 # @Author: xiawang1024
 # @Date: 2023-02-11 21:21:21
 # @LastEditTime: 2023-02-25 17:16:22
 # @LastEditors: IraXu
 # @Description: 
 # @FilePath: /ImmortalWrt-360T7/diy2-part2.sh
 # 开源让世界美好
### 

# 自定义默认网关，后方的192.168.77.1即是可自定义的部分
sed -i 's/192.168.1.1/192.168.6.1/g' package/base-files/files/bin/config_generate
# 固件版本名称自定义
sed -i "s/DISTRIB_DESCRIPTION=.*/DISTRIB_DESCRIPTION='ImmortalWrt By IraXu $(date +"%Y%m%d") '/g" package/base-files/files/etc/openwrt_release
