#!/bin/sh
yum install -y zlib-devel bzip2-devel openssl-devel ncurses-devel sqlite-devel readline-devel tk-devel gcc make libffi-devel
wget https://www.python.org/ftp/python/3.8.1/Python-3.8.1.tgz
tar -zxvf Python-3.8.1.tgz  
cd Python-3.8.1
./configure prefix=/usr/local/python38
make && make install
ln -s /usr/local/python38/bin/python3.8 /usr/bin/python38
ln -s /usr/local/python38/bin/pip3.8 /usr/bin/pip38
