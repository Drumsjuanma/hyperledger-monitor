#!/bin/bash
set -e

#Installation of Hyperledger Fabric v1.0 prerequisites
echo 'Installation of Hyperledger Fabric v1.0 prerequisites'

#Getting SO
OS=$(cat /etc/os-release | grep "^ID=" | sed 's/ID=//g' | sed 's\"\\g')

#Installation in centos and rhel
if [ $OS = "centos" ] || [ $OS = "rhel" ];then
  #TODO
  echo "Installing the environment in " + $OS 
  echo 'TODO'

#Installation in Ubuntu
elif [ $OS = "ubuntu" ];then
  echo "Installing the environment in " + $OS 
  
  #Installing GO
  cd $HOME/ && wget https://storage.googleapis.com/golang/go1.7.1.linux-amd64.tar.gz
  tar -xvf go1.7.1.linux-amd64.tar.gz
  mkdir $HOME/gopath 
  export GOPATH=$HOME/gopath 
  export GOROOT=$HOME/go 
  export PATH=$PATH:$GOROOT/bin   
  rm go1.7.1.linux-amd64.tar.gz

#GNU libtool: libltdl-dev
  apt-get install libltdl-dev

  #Install Docker
  wget https://download.docker.com/linux/ubuntu/dists/xenial/pool/stable/amd64/docker-ce_17.06.0~ce-0~ubuntu_amd64.deb
  dpkg -i docker-ce_17.06.0~ce-0~ubuntu_amd64.deb
  rm docker-ce_17.06.0~ce-0~ubuntu_amd64.deb

  #Install Pip
  apt-get install python-pip 

  #Install Docker Compose
  pip install docker-compose

  #Install Curl
  apt-get install curl
fi



echo 'Instalacion completada'

set +e
