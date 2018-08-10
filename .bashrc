# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# Uncomment the following line if you don't like systemctl's auto-paging feature:
# export SYSTEMD_PAGER=

# User specific aliases and functions
alias i3="vim .config/i3/config"
alias i3b="sudo vim /usr/local/etc/i3blocks.conf"
alias brc="vim .bashrc"
alias vrc="vim .vimrc"
alias q="exit"
alias c="clear"
alias r="ranger"
alias re="reboot"
alias s="shutdown -h now"
alias ..="cd .."
alias ll="ls -l"
