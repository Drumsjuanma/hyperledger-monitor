mkdir -p $GOPATH/src/github.com/hyperledger/
cd $GOPATH/src/github.com/hyperledger/ 
git clone https://github.com/hyperledger/fabric.git
cd fabric
make
export PATH=$PATH:$GOPATH/src/github.com/hyperledger/fabric/build/bin/
cd examples/e2e_cli/ && ./network_setup.sh up
