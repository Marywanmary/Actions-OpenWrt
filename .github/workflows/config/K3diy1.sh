#!/bin/bash
#=================================================
# DIY script
#=================================================
#添加自己需要的软件源
#rm -rf ./package/lean/k3screenctrl
#rm -rf ./package/lean/autocore
#=================================================

echo '添加argon/kucat主题'
rm -rf package/lean/luci-theme-argon  
git clone -b 18.06 https://github.com/jerrykuku/luci-theme-argon package/lean/luci-theme-argon
git clone -b https://github.com/jerrykuku/luci-app-argon-config package/lean/luci-app-argon-config
git clone https://github.com/sirpdboy/luci-theme-kucat package/lean/luci-theme-kucat
#git clone https://github.com/sirpdboy/luci-app-advancedplus package/lean/luci-app-advancedplus

#echo '设置默认argon主题'
#sed -i 's/luci-theme-bootstrap/luci-theme-argon/g' ./feeds/luci/collections/luci/Makefile

#echo '添加AdGuardHome'
#git clone https://github.com/AdguardTeam/AdGuardHome package/lean/AdGuardHome
#git clone https://github.com/kongfl888/luci-app-adguardhome package/lean/luci-app-adguardhome

#echo '添加Lucky'
#git clone https://github.com/sirpdboy/luci-app-lucky.git package/lean/lucky

#echo '添加OpenClash'
#echo 'src-git OpenClash https://github.com/vernesong/OpenClash/trunk/luci-app-openclash' >>feeds.conf.default

#echo '添加Passwall'
#git clone https://github.com/xiaorouji/openwrt-passwall.git -b packages ./package/lean/passwall_package
#git clone https://github.com/xiaorouji/openwrt-passwall.git -b luci ./package/lean/passwall
#cp -rf ./package/lean/passwall_package/* ./package/lean/passwall
#rm -rf ./package/lean/passwall_package

#echo '添加lwz322的K3屏幕插件'
#rm -rf package/lean/k3screenctrl
#rm -rf package/lean/luci-app-k3screenctrl
#git clone https://github.com/lwz322/k3screenctrl_build.git package/lean/k3screenctrl
#git clone https://github.com/lwz322/luci-app-k3screenctrl.git package/lean/luci-app-k3screenctrl

echo '添加软件源'
echo 'src-git sirpdboy https://github.com/sirpdboy/sirpdboy-package' >>feeds.conf.default
echo 'src-git small8 https://github.com/kenzok8/small-package' >>feeds.conf.default
#echo 'src-git kiddin9 https://github.com/kiddin9/openwrt-packages' >>feeds.conf.default
