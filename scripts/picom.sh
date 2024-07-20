latest_release_tag=$(curl -s https://api.github.com/repos/yshui/picom/releases/latest | grep -oP '"tag_name": "\K(.*?)(?=")')

# install deps
sudo apt-get -qq -y install libconfig-dev libdbus-1-dev libegl-dev libev-dev libgl-dev libepoxy-dev libpcre2-dev libpixman-1-dev libx11-xcb-dev libxcb1-dev libxcb-composite0-dev libxcb-damage0-dev libxcb-glx0-dev libxcb-image0-dev libxcb-present-dev libxcb-randr0-dev libxcb-render0-dev libxcb-render-util0-dev libxcb-shape0-dev libxcb-util-dev libxcb-xfixes0-dev meson ninja-build uthash-dev

# clone repo
git clone --depth 1 --branch $latest_release_tag https://github.com/yshui/picom
cd picom

# build and install
meson setup --buildtype=release build
ninja -C build
cd build/src
ninja -C build install

# cleanup
cd ../../../
rm -rf picom
