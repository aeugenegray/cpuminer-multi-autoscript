sudo apt-get -y update
sudo apt-get -y groupinstall "Development Tools"
sudo apt-get -y install git libcurl-devel python-devel screen rsync epel-release tmux nano expect
git clone https://github.com/borzz/cpuminer-multi
cd cpuminer-multi/
./autogen.sh && CFLAGS="-march=native" 
./configure
make
sudo make install
expect ./expect2.sh
tmux
minerd -a cryptonight -o stratum+tcp://qwerty.mineallcrypto.com:6076 -u QWC1ezpQa8xhjAkAMNM2p5G7kuLrmXu8XjidgccoPEZncY4vKB4DD2MhiRx3qmWaKqcBUsVGVdnFjCD7P5Lmij1G1SCNpihRdT -p x


