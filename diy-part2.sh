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

# 自定义默认网关，后方的192.168.10.1即是可自定义的部分
sed -i 's/192.168.1.1/192.168.10.1/g' package/base-files/files/bin/config_generate
# 固件版本名称自定义
sed -i "s/DISTRIB_DESCRIPTION=.*/DISTRIB_DESCRIPTION='ImmortalWrt By IraXu $(date +"%Y%m%d") '/g" package/base-files/files/etc/openwrt_release

# 添加 cpufreq（cpu性能调节优化）---- 实验性功能，可能打包失败
# rm -rf package/luci-app-cpufreq
# svn co https://github.com/immortalwrt/luci/trunk/applications/luci-app-cpufreq feeds/luci/applications/luci-app-cpufreq
# ln -sf ../../../feeds/luci/applications/luci-app-cpufreq ./package/feeds/luci/luci-app-cpufreq
# sed -i 's,1608,1800,g' feeds/luci/applications/luci-app-cpufreq/root/etc/uci-defaults/cpufreq
# sed -i 's,2016,2208,g' feeds/luci/applications/luci-app-cpufreq/root/etc/uci-defaults/cpufreq
# sed -i 's,1512,1608,g' feeds/luci/applications/luci-app-cpufreq/root/etc/uci-defaults/cpufreq
