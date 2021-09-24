#Add Custom Feeds
echo 'src-git bypass https://github.com/kiddin9/openwrt-bypass' >>feeds.conf.default;

git clone https://github.com/kiddin9/openwrt-packages package/allpackages;
rm -rf package/allpackages/naiveproxy;
echo "删除naiveproxy成功";


#修改路由器网关地址
sed -i 's/192.168.1.1/192.168.222.1/g' package/base-files/files/bin/config_generate;

#默认开启WiFi无线
sed -i 's/disabled=1/disabled=0/g' package/kernel/mac80211/files/lib/wifi/mac80211.sh
sed -i 's/ssid=OpenWrt/ssid=OpenWrt/g' package/kernel/mac80211/files/lib/wifi/mac80211.sh;
#配置无线加密方式和链接密码
sed -i 's/encryption=none/encryption=psk2+ccmp\n                        set wireless.default_radio${devidx}.key=admin999+++/g' package/kernel/mac80211/files/lib/wifi/mac80211.sh

