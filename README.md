## 斐讯Phicomm K3 自用固件 源码来自于LEAN，Actions自动编译


## 5.4/5.10内核编译失败的原因
https://github.com/coolsnowwolf/lede/issues/11255
编译中报错，sha1-arm.ko' is missing.

## 解决办法
fork https://github.com/coolsnowwolf/lede
参照config-5.15的设置，修改lede/target/linux/bcm53xx/config-5.4和5.10，在
# # CONFIG_ARM_ATAG_DTB_COMPAT is not set 下面添加CONFIG_ARM_CRYPTO=y
然后使用自己的源编译

## 编译步骤：
1.首次通过SSH链接，make menuconfig选取需要的ipk，保存.config文件；
2.将.config文件内容复制替换本地config/K3xxx.config文件；
3.再次编译即可。

## Tips
K3diy1个人喜好为软件源/主题源，K3diy2为对系统的修改。  

cloudflarespeedtest运行无反应，脚本没有执行权限，用下面命令添加权限后正常运行  
mingxiaoyu/luci-app-cloudflarespeedtest#56  
chmod +x /usr/bin/cloudflarespeedtest/cloudflarespeedtest.sh  

Lucky如果自行编译需要手动在Network中添加Lucky包  

# Openclash 打不开githubusercontent.com
# https://github.com/vernesong/OpenClash/issues/1522
因为DNS污染，覆写设置-DNS设置，勾选Fallback-Filter，然后flushdns即可。

# AdguardHome相关：
安装时不用额外添加adguardhome包，否则会造成2个ADH进程，直接安装luci-app-adguardhome就可以了  
启动项AdGuardHome启动项被禁用无法更新核心的原因是没有赋予执行权限  
chmod +x /etc/init.d/AdGuardHome  

## 使用简介：
科学部分PassWall1/Bypass/SSRP/VSSR默认只有Xray，PassWall2只有SSR协议。  
默认主机名为K3，可在K3diy2.sh中修改；  
默认IP为192.168.11.1，可在K3diy2.sh中修改；  
默认账户为root，密码为空或者password；  
无线功率调整：在系统-启动项，页面最下方，在 'exit 0' 之前插入下方2行代码；  
iwconfig wlan0 txpower 23  
iwconfig wlan1 txpower 23  
快速定位链接：  
http://k3/cgi-bin/luci/admin/system/startup  

## 按照Lite/Main/Super定制3个版本
# Lite
luci-app-adguardhome  
luci-app-autotimeset  
luci-app-firewall  
luci-app-k3screenctrl  
luci-app-lucky  
luci-app-nlbwmon  
luci-app-openclash  
luci-app-passwall  
luci-app-turboacc  
luci-app-upnp  
luci-app-vlmcsd  
luci-app-webadmin  
luci-app-wolplus  
luci-theme-argon  
luci-theme-argon-config  

# Main
luci-app-cloudflarespeedtest  
luci-app-mwan3  
luci-app-mwan3helper  
luci-app-ssr-plus  
luci-app-unblockmusic  
luci-app-wireguard  


# Super
luci-app-accesscontrol  
luci-app-adbyby-plus  
luci-app-advanced
luci-app-arpbind  
luci-app-bypass  
luci-app-easymesh  
luci-app-eqos  
luci-app-filetransfer  
luci-app-frpc  
luci-app-frps  
luci-app-guest-wifi  
luci-app-mosdns  
luci-app-netdata  
luci-app-passwall2  
luci-app-serverchan  
luci-app-sqm  
luci-app-ttyd  
luci-app-vssr  
luci-app-wifischedule  
luci-app-zerotier  


## 代码参考：

P3TERX https://github.com/P3TERX/Actions-OpenWrt

coolsnowwolf https://github.com/coolsnowwolf/lede/

WongKwongYu https://github.com/WongKwongYu/Openwrt-K3

yangxu52 https://github.com/yangxu52/Phicomm-K2P-K3-OpenWrt-Firmware/

mitsukileung https://github.com/mitsukileung/Actions-OpenWrt

xiangfeidexiaohuo https://github.com/xiangfeidexiaohuo/OpenWrt_Build

kenzok8 https://github.com/kenzok8/small-package

sirpdboy https://github.com/sirpdboy/sirpdboy-package
