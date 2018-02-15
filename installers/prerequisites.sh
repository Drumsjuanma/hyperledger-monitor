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
fi

#Installation in Ubuntu
elif [ $OS = "ubuntu" ];then
  echo "Installing the environment in " + $OS 

  GOREL="go1.7.3.linux-amd64.tar.gz"

  #Do not mess with Go instalations
  if ! type "go" > /dev/null; then
    #INSTALACION DE GO
    PATH="$PATH:/usr/local/go/bin"
    echo "Installing GO"
    wget -q "https://storage.googleapis.com/golang/${GOREL}"
    tar -xvzf "${GOREL}"
    mv go /usr/local/go
    sudo rm "${GOREL}"
  else
    V1=$(go version | grep -oP '\d+(?:\.\d+)+')
    V2=$(echo $GOREL | grep -oP '\d+(?:\.\d+)+')
    nV1=$(echo $V1 | sed 's/\.//g')
    nV2=$(echo $V2 | sed 's/\.//g')
    if (( $nV1 >= $nV2 )); then
       echo "Using your own version of Go"
    else
       echo "Your version of go is smaller than required"
       exit
    fi
  fi

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
