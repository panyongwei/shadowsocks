# shadowsocks
shadowsocks一键安装脚本适用于Centos版本服务器
# 使用说明
	chmox +x shadowsocks.sh
	sh ./shadowsocks.sh

然后输入服务器ip、端口、密码就会自动启动了
如果想要添加多个端口和密码可以修改
	/etc/shadowsocks.json
在port_password里面添加一组数据即可
然后执行
	ssserver -c /etc/shadowsocks.json -d restart
进行重启生效

详细教程看博客：[www.sunnyos.com](http://www.sunnyos.com "Sunny博客")  
搭建好免费提供的ngrok服务：[www.ngrok.cc](http://www.ngrok.cc "www.ngrok.cc")  
