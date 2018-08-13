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
alias pipes="./pipes.sh"
alias colors="./colors.sh"

export PS1="\[\e[1;33m\]\u\[\e[m\]\[\e[1;37m\]@\[\e[m\]\[\e[1;33m\]\h\[\e[m\] \[\e[1;37m\]in\[\e[m\] \[\e[1;33m\]\W\[\e[m\]     \[\e[1;33m\][\[\e[m\]\[\e[1;31m\]\@\[\e[m\]\[\e[1;33m\]]\[\e[m\] 
\[\e[1;31m\]↳\[\e[m\] "
