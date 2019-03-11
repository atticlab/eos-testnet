mkdir sources
cd sources

# Install eosio with SUN currency

git clone https://github.com/eosio/eos --recursive
cd eos
git checkout v1.7.0-rc2
# IN eosio v1.7.0-rc2 eosio_build.sh script was moved to scripts folder
cd scripts
./eosio_build.sh -s SUN

cd ../build
sudo make install
echo 'PATH=$PATH:/usr/local/eosio/bin/' >> ~/.profile
source ~/.profile

cd ..

# Install eosio.cdt

git clone --recursive https://github.com/eosio/eosio.cdt
cd eosio.cdt
git checkout v1.6.0-rc1
./build.sh
sudo ./install.sh

cd ..

# Build eosio.contracts
git clone --recursive https://github.com/EOSIO/eosio.contracts.git
cd eosio.contracts
git checkout v1.6.0-rc2
./build.sh