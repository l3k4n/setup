############ uncomment to setup keymap #############
# curl -L https://oryx.nyc3.cdn.digitaloceanspaces.com/keymapp/keymapp-latest.tar.gz --output keymap.tar.gz
# tar -xvzf keymap.tar.gz -C ~/Documents
# apt install libusb-1.0-0-dev
# cp zsa_rules /etc/udev/rules.d/50-zsa.rules
# groupadd plugdev
# usermod -aG plugdev $USER

# install qmk
sudo apt-get -qq -y install git python3-pip
python3 -m pip install --user qmk
qmk setup -y zsa/qmk_firmware -b firmware23
