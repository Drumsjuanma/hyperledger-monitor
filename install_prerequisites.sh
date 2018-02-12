#Installation of Hyperledger Fabric v1.0 from Source on Ubuntu 16.04 LTS

#Installing Go Language
#cd $HOME/ && wget https://storage.googleapis.com/golang/go1.7.1.linux-amd64.tar.gz
#tar -xvf go1.7.1.linux-amd64.tar.gz
#mkdir $HOME/gopath 
#export GOPATH=$HOME/gopath 
#export GOROOT=$HOME/go 
#export PATH=$PATH:$GOROOT/bin 

#GNU libtool: libltdl-dev
apt-get install libltdl-dev

#Install Docker
wget https://download.docker.com/linux/ubuntu/dists/xenial/pool/stable/amd64/docker-ce_17.06.0~ce-0~ubuntu_amd64.deb
dpkg -i docker-ce_17.06.0~ce-0~ubuntu_amd64.deb

#Install Pip
apt-get install python-pip 

#Install Docker Compose
pip install docker-compose

#Install Curl
apt-get install curl