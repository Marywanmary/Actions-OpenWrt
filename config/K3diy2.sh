#!/bin/bash
#=================================================
# DIY script
#=================================================
#对固件进行微调
#=================================================

echo '只编译K3固件'
sed -i 's|^TARGET_|# TARGET_|g; s|# TARGET_DEVICES += phicomm_k3|TARGET_DEVICES += phicomm_k3|' target/linux/bcm53xx/image/Makefile

echo '更改主机名'
sed -i "s/hostname='.*'/hostname='K3'/g" package/base-files/files/bin/config_generate

echo '配置默认ip'
sed -i 's/192.168.1.1/192.168.11.1/g' package/base-files/files/bin/config_generate

echo '清除默认密码password'
sed -i '/V4UetPzk$CYXluq4wUazHjmCDBCqXF/d' package/lean/default-settings/files/zzz-default-settings

echo '替换K3无线驱动为69027'
rm -rf ./package/lean/k3-brcmfmac4366c-firmware/files/lib/firmware/brcm/brcmfmac4366c-pcie.bin
svn export https://github.com/xiangfeidexiaohuo/Phicomm-K3_Wireless-Firmware/trunk/brcmfmac4366c-pcie.bin_69027 ./package/lean/k3-brcmfmac4366c-firmware/files/lib/firmware/brcm/brcmfmac4366c-pcie.bin

echo '移除主页跑分信息显示'
sed -i 's/ <%=luci.sys.exec("cat \/etc\/bench.log") or ""%>//g' package/lean/autocore/files/arm/index.htm

#echo '移除主页日志打印'
#sed -i '/console.log(mainNodeName);/d' package/lean/luci-theme-argon/htdocs/luci-static/argon/js/script.js

#echo '修改upnp绑定文件位置'
#sed -i 's/\/var\/upnp.leases/\/tmp\/upnp.leases/g' feeds/packages/net/miniupnpd/files/upnpd.config
#cat feeds/packages/net/miniupnpd/files/upnpd.config |grep upnp_lease_file

#修改NTP设置
#sed -i "s/'0.openwrt.pool.ntp.org'/'ntp1.aliyun.com'/g" package/base-files/files/bin/config_generate
#sed -i "s/'1.openwrt.pool.ntp.org'/'ntp2.aliyun.com'/g" package/base-files/files/bin/config_generate
#sed -i "s/'2.openwrt.pool.ntp.org'/'ntp3.aliyun.com'/g" package/base-files/files/bin/config_generate
#sed -i "s/'3.openwrt.pool.ntp.org'/'ntp4.aliyun.com'/g" package/base-files/files/bin/config_generate
#cat package/base-files/files/bin/config_generate |grep system.ntp.server=

echo '修改内核版本，默认为5.4'
echo '当前内核版本'
cat target/linux/bcm53xx/Makefile |grep KERNEL_PATCHVER
#sed -i 's/KERNEL_PATCHVER:=*.*/KERNEL_PATCHVER:=5.4/g' target/linux/bcm53xx/Makefile
#sed -i 's/KERNEL_PATCHVER:=*.*/KERNEL_PATCHVER:=5.10/g' target/linux/bcm53xx/Makefile
#sed -i 's/KERNEL_PATCHVER:=*.*/KERNEL_PATCHVER:=5.15/g' target/linux/bcm53xx/Makefile
#cat target/linux/bcm53xx/Makefile |grep KERNEL_PATCHVER
echo '修改后内核版本'
cat target/linux/bcm53xx/Makefile |grep KERNEL_PATCHVER

#echo '修改adguardhome的下载型号为armv5'
#sed -i 's/\${Arch}/armv5/g' package/lean/luci-app-adguardhome/root/usr/share/AdGuardHome/links.txt
#sed -i 's/\${Arch}/armv5/g' feeds/sirpdboy/luci-app-adguardhome/root/usr/share/AdGuardHome/links.txt
#sed -i 's/\${Arch}/armv5/g' feeds/small8/luci-app-adguardhome/root/usr/share/AdGuardHome/links.txt
#sed -i 's/\AdGuardHome.yaml/adguardhome.yaml/g' feeds/sirpdboy/luci-app-adguardhome/root/etc/config/AdGuardHome
#sed -i 's/\5553/5335/g' feeds/sirpdboy/luci-app-adguardhome/root/etc/config/AdGuardHome
#sed -i 's/\AdGuardHome.yaml/adguardhome.yaml/g' feeds/small8/luci-app-adguardhome/root/etc/config/AdGuardHome
#sed -i 's/\5553/5335/g' feeds/small8/luci-app-adguardhome/root/etc/config/AdGuardHome
