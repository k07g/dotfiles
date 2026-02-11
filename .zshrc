# Homebrew
export PATH=/opt/homebrew/bin:"$PATH"

autoload -U compinit
compinit -u

# prompt
PROMPT="%{${fg[blue]}%}[%~]%{${reset_color}%}%% "
PROMPT2="%_%% "
SPROMPT="%r is correct? [n,y,a,e]:] "

# alias setting
alias ls='eza -Grt changed'
alias ll='eza -l -r -t changed'
alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../..'
alias ..2='cd ../..'
alias ..3='cd ../../..'

function chpwd() { ll }
