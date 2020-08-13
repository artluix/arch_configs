#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'

#PS1='[\u@\h \W]\$ '
export PS1="\[\033[38;5;14m\][\[$(tput sgr0)\]\[\033[38;5;208m\]\u\[$(tput sgr0)\]\[\033[38;5;15m\]@\h \[$(tput sgr0)\]\[\033[38;5;14m\]\W]\[$(tput sgr0)\]\[\033[38;5;15m\]\\$ \[$(tput sgr0)\]"

export PATH="$HOME/.cargo/bin:$PATH"
export PATH="$HOME/.local/bin:$PATH"

alias vi=/usr/bin/vim

alias vpnui=/opt/cisco/anyconnect/bin/vpnui
alias vpn=/opt/cisco/anyconnect/bin/vpn

archey3
