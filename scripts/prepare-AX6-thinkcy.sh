git clone https://github.com/AgustinLorenzo/openwrt.git -b main --single-branch openwrt --depth 1
cd openwrt

# 添加包
chmod +x ../scripts/*.sh
../scripts/custom_feeds.sh

echo "导入自定义配置"
cp -v -r ../openwrt-config/AX6/files ./
chmod +x ./files/etc/tinc/tincvpn/tinc-up
chmod +x ./files/etc/tinc/tincvpn/tinc-down

# config file
cp -v ../config/AX6-zhkong-thinkcy-minimal.config .config
make defconfig
