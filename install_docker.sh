#!/bin/sh
sudo yum remove docker \
                  docker-client \
                  docker-client-latest \
                  docker-common \
                  docker-latest \
                  docker-latest-logrotate \
                  docker-logrotate \
                  docker-engine

yum install -y yum-utils
yum-config-manager \
    --add-repo \
    https://download.docker.com/linux/centos/docker-ce.repo
	
#更新索引
yum makecache fast
#安装docker ce
yum install -y docker-ce docker-ce-cli containerd.io
systemctl start docker
docker run hello-world
