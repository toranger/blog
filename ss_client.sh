#!/bin/bash
#	program: to build envir auto
apt-get install gcc -y
apt-get install libevent-dev -y
apt-get install python-pip -y
apt-get install swig -y
apt-get install autoconf -y
apt-get install libtool -y
apt-get install git -y
pip install gevent
pip install M2Crypto
pip install shadowsocks


if [ -f /etc/shadowsocks.json ];then
	rm -r /etc/shadowsocks.json
fi

touch /etc/shadowsocks.json
read -p "please input server ip:" server_ip
read -p "please input server port:" server_port
read -p "please input password:" server_pass
 
echo -e "{\n\t\"server\":\"${server_ip}\",\n\t\"server_port\":\"${server_port}\",\n\t\"local_port\":1080,\n\t\"password\":\"${server_pass}\",\n\t\"timeout\":600,\n\t\"method\":\"aes-256-cfb\",\n\t\"fast_open\":false\n}" >> /etc/shadowsocks.json

#firewall-cmd --permanent --zone=public --add-port=8130/tcp
#firewall-cmd --permanent --zone=public --add-port=8131/tcp
#firewall-cmd --reload



what
