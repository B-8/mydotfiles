clear
echo -en "\033[1;32mthis script is going to install basic packages like i3 and i3-gaps and more for ricing!\033[0m"
sleep 4
clear
echo "starting now!"
sleep 4
clear
sudo dnf install -y i3 vim ranger w3m feh ImageMagick cava libxcb-devel xcb-util-keysyms-devel xcb-util-devel xcb-util-wm-devel xcb-util-xrm-devel yajl-devel libXrandr-devel startup-notification-devel libev-devel xcb-util-cursor-devel libXinerama-devel libxkbcommon-devel libxkbcommon-x11-devel pcre-devel pango-devel git gcc automake i3status i3lock
sudo dnf copr enable yaroslav/i3desktop
sudo dnf install -y compton rofi
clear
sleep 1
echo "now installing other packages..."
sleep 4
clear
sudo pip3 install pywal
clear
echo "now installing vundle and i3-gaps..."
sleep 4
clear
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
git clone https://www.github.com/Airblader/i3 i3-gaps && cd i3-gaps
autoreconf --force --install
rm -rf build/
mkdir -p build && cd build/
../configure --prefix=/usr --sysconfdir=/etc --disable-sanitizers
make
sudo make install
cd ..
echo -e "\n"
echo -e "\n"
echo -en "\033[1;32mInstallation Successful!\033[0m"
sleep 4
clear
echo -en "\033[1;32mEnjoy! -zen\033[0m"
sleep 4
clear
