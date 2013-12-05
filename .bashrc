#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return


## Alias
alias yt='yaourt'
alias ytupdate='yaourt -Syua'
alias ls='ls --color=auto'
alias reboot='systemctl reboot'
alias poweroff='systemctl poweroff'
PS1='[\u@\h \W]\$ '

PATH=$PATH:$HOME/.rvm/bin # Add RVM to PATH for scripting
[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm"
PATH="/usr/local/heroku/bin:$PATH"
