#/bin/bash

# set default lan ip
sed -i 's/192.168.1.1/10.0.0.1/g' package/base-files/files/bin/config_generate

# add passwall
git clone --depth=1 https://github.com/xiaorouji/openwrt-passwall-packages package/openwrt-passwall
git clone --depth=1 https://github.com/xiaorouji/openwrt-passwall package/luci-app-passwall

# add sync dial
git clone https://github.com/kiddin9/luci-app-syncdial package/luci-app-syncdial

