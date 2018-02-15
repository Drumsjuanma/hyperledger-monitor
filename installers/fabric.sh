export GOPATH=$HOME/
#export GOROOT=$HOME/
export PATH=$PATH:$GOPATH/bin

mkdir -p $GOPATH/hyperledger/
cd $GOPATH/hyperledger/ 
git clone https://github.com/hyperledger/fabric.git
cd fabric
make

#cd examples/e2e_cli/ && ./network_setup.sh up
