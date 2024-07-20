# install i3
sudo apt-get -qq -y install i3 playerctl

# install i3blocks
git clone https://github.com/vivien/i3blocks
cd i3blocks
./autogen.sh
./configure
make
make install
cd ..
rm -rf i3blocks
