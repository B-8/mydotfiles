#! /bin/bash
clear
echo -en "\033[1;32mHello \033[1;37m" && whoami
sleep 2
clear
echo -en "\033[1;32mInstaller Is Starting...\033[0m"
sleep 2
clear
echo -en "\033[1;32mInstalling I3 And Other Basics...\033[0m"
sleep 2
clear
#installing basics
sudo dnf install -y qutebrowser i3 vim zsh ranger w3m feh ImageMagick cava libxcb-devel xcb-util-keysyms-devel xcb-util-devel xcb-util-wm-devel xcb-util-xrm-devel yajl-devel libXrandr-devel startup-notification-devel libev-devel xcb-util-cursor-devel libXinerama-devel libxkbcommon-devel libxkbcommon-x11-devel pcre-devel pango-devel git gcc automake i3status i3lock
#end of basics
clear
echo -en "\033[1;32mInstalling Compton And Rofi...\033[0m"
sleep 2
clear
#installing compton and rofi
sudo dnf copr enable yaroslav/i3desktop
sudo dnf install -y compton rofi
#end of compton and rofi
clear
echo -en "\033[1;32mInstalling Pywal...\033[0m"
sleep 2
clear
#installing pywal
sudo pip3 install pywal
#end of pywal
clear
echo -en "\033[1;32mInstalling Vundle And I3 Gaps...\033[0m"
sleep 2
clear
#installing vundle and i3-gaps
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
git clone https://www.github.com/Airblader/i3 i3-gaps && cd i3-gaps
autoreconf --force --install
rm -rf build/
mkdir -p build && cd build/
../configure --prefix=/usr --sysconfdir=/etc --disable-sanitizers
make
sudo make install
#end vundle and i3-gaps
clear
echo -en "\033[1;32mInstalling I3blocks...\033[0m"
sleep 2
clear
#installing I3blocks
cd
git clone git://github.com/vivien/i3blocks
cd i3blocks
sudo make clean debug
sudo make clean all
sudo make install
clear
#end of I3blocks
#installing zsh
echo -en "\033[1;32mInstalling zsh...\033[0m"
sleep 2
clear
cd
git clone git://github.com/robbyrussell/oh-my-zsh.git ~/.oh-my-zsh
cp ~/.oh-my-zsh/templates/zshrc.zsh-template ~/.zshrc
chsh -s /bin/zsh
#end of zsh
clear
echo -en "\033[1;32mCONGRATS!!! \033[1;37m" && whoami
sleep 2
clear
echo -en "\033[1;32mEVERYTHING IS INSTALLED!\033[0m"
sleep 2
clear
echo -en "\033[1;32mNOW RESTARTING MACHINE TO LOAD I3 ZSH AND EVERYTHING ELSE...\033[0m"
sleep 2
clear
reboot
