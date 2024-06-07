curl -s -LO https://github.com/neovim/neovim/releases/latest/download/nvim-linux64.tar.gz
rm -rf /opt/nvim
tar -C /opt -xzf nvim-linux64.tar.gz
'export PATH="$PATH:/opt/nvim-linux64/bin"' >> ~/.bashrc

# for nvim clipboard
apt-get -qq -y install xclip
