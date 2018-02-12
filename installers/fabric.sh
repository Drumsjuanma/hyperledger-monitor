mkdir -p ../src/github.com/hyperledger/
cd ../src/github.com/hyperledger/ 
git clone https://github.com/hyperledger/fabric.git
cd fabric
make
cd examples/e2e_cli/ && ./network_setup.sh up
