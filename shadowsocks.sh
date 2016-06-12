#!/bin/bash
# -*- coding: UTF-8 -*-
#############################################
#作者网名：Sunny								#
#作者博客：www.sunnyos.com                    #
#作者QQ：327388905                           #
#作者QQ群:57914191                           #
#作者微博：http://weibo.com/2442303192        #
#############################################
echo "服务器ip"
read server_ip
echo "端口"
read port
echo "密码"
read passwd
yum update -y
yum install python-setuptools m2crypto supervisor epel-release -y
easy_install pip
pip install shadowsocks
cat <<EOF> /etc/shadowsocks.json
{
    "server":"${server_ip}",
    "local_address":"127.0.0.1",
    "local_port":1080,
    "port_password":{
        "${port}":"${passwd}"
    },
    "timeout":300,
    "method":"aes-256-cfb",
    "fast_open": false
}
EOF
ssserver -c /etc/shadowsocks.json -d restart






