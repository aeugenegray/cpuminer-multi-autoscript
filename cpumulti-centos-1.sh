sudo yum -y update
sudo yum -y groupinstall "Development Tools"
sudo yum -y install git libcurl-devel python-devel screen rsync epel-release tmux nano expect
git clone https://github.com/borzz/cpuminer-multi
cd cpuminer-multi/
./autogen.sh && CFLAGS="-march=native" 
./configure
make
sudo make install
mv ~/cpuminer-multi-autoscript/expect-2.sh ~/cpuminer-multi-autoscript/cpuminer-multi
expect ./expect2.sh
tmux
trap "" 15
