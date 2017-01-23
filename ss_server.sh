#!/bin/bash
#	program: to build envir auto
yum install gcc -y
yum install libevent -y
yum install python-pip -y
yum install python-tool -y
yum install openssl_devel -y
yum install swig -y
yum install autoconf -y
yum install libtool -y
yum install git -y
pip install gevent
pip install M2Crypto
pip install shadowsocks


if [ -f /etc/shadowsocks.json ];then
	rm -r /etc/shadowsocks.json
fi

touch /etc/shadowsocks.json
read -p "please input tmd passwd:" tmd_pass
read -p "please input twz passwd:" twz_pass
 
echo -e "{\n\t\"server\":\"0.0.0.0\",\n\t\"local_address\":\"127.0.0.1\",\n\t\"local_port\":1080,\n\t\"port_password\":\n\t{\n\t\t\"8130\":\"${tmd_pass}\",\n\t\t\"8131\":\"${twz_pass}\"\n\t},\n\t\"timeout\":600,\n\t\"method\":\"aes-256-cfb\",\n\t\"fast_open\":false\n}" >> /etc/shadowsocks.json

firewall-cmd --permanent --zone=public --add-port=8130/tcp
firewall-cmd --permanent --zone=public --add-port=8131/tcp
firewall-cmd --reload




