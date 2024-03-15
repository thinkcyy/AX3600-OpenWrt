git clone https://github.com/AgustinLorenzo/openwrt.git -b main --single-branch openwrt --depth 1
cd openwrt

sh ../scripts/custom_feeds.sh

# config file
cp ../config/AX6-zhkong-thinkcy-minimal.config .config
make defconfig
