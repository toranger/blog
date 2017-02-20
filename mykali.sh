#!/bin/bash
#       program: to build envir auto
#when use the newest openssl the sslocal may have the problem of traceback
#when load the libcrypto.o
#use this command: pip install -U git+https://github.com/shadowsocks/shadowsocks.git@master
#use the ctag vim cscope taglist tmux
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

echo "{\n\t\"server\":\"${server_ip}\",\n\t\"server_port\":\"${server_port}\",\n\t\"local_port\":1080,\n\t\"password\":\"${server_pass}\",\n\t\"timeout\":600,\n\t\"method\":\"aes-256-cfb\",\n\t\"fast_open\":false\n}" >> /etc/shadowsocks.json

#pinyin
sudo apt-get install ibus
sudo apt-get install ibus-libpinyin

#stardict
sudo apt-get install stardict
for f in stardict*.tar.bz2; do sudo tar -jxvf $f -C /usr/share/stardict/dic; done
sudo apt-get remove stardict-plugin-espeak stardict-plugin-festival
sudo tar -jxvf WyabdcRealPeopleTTS.tar.bz2 -C /usr/share

#sound
sudo systemctl --user enable pulseaudio.s
cd /etc/default/
touch pulseaudio
#write this content
#PULSEAUDIO_SYSTEM_START=1 
#DISALLOW_MODULE_LOADING=0
