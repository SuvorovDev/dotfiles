# ~/.bashrc

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias grep='grep --color=auto'
PS1='\W > '

# Alias
alias ls='ls -a --color=auto'
alias ll='ls -la --color=auto'
alias x='startx'
