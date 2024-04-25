# 此脚本用处是：添加第三方插件
#=========================================================================================================================


# 1-添加ShadowSocksR Plus+插件
sed -i 's/^#\(.*helloworld\)/\1/' feeds.conf.default

# 2-添加PowerOff关机插件
git clone https://github.com/TraderWukong/luci-app-poweroff.git package/luci-app-poweroff

# 3-替换argon主题
#git clone https://github.com/TraderWukong/luci-theme-opentomcat.git package/luci-theme-opentomcat
git clone -b 18.06 https://github.com/jerrykuku/luci-theme-argon.git package/lean/luci-theme-argon
git clone -b 18.06 https://github.com/jerrykuku/luci-app-argon-config.git package/lean/luci-app-argon-config

# 4-添加OpenClash插件
sed -i '$a\src-git openclash https://github.com/vernesong/OpenClash' ./feeds.conf.default

# 5-添加PassWall插件
echo "src-git passwall https://github.com/xiaorouji/openwrt-passwall.git;main" >> "feeds.conf.default"
echo "src-git passwall_packages https://github.com/xiaorouji/openwrt-passwall-packages.git;main" >> "feeds.conf.default"

# 5-添加PassWall2插件
echo "src-git passwall2 https://github.com/xiaorouji/openwrt-passwall2.git;main" >> "feeds.conf.default"
