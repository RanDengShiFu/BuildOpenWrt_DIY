#Add Custom Feeds
# echo 'src-git kenzo https://github.com/kenzok8/openwrt-packages' >>feeds.conf.default
# echo 'src-git small https://github.com/kenzok8/small' >>feeds.conf.default
#修改路由器网关地址
sed -i 's/192.168.1.1/192.168.222.1/g' package/base-files/files/bin/config_generate;
