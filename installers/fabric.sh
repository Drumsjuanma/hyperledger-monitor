
export GOPATH=$HOME/gopath 
export GOROOT=$HOME/go 
export PATH=$PATH:$GOROOT/bin 

mkdir -p $GOPATH/src/github.com/hyperledger/
cd $GOPATH/src/github.com/hyperledger/
git clone https://github.com/hyperledger/fabric.git
cd fabric
make

cd examples/e2e_cli/ && ./network_setup.sh up
