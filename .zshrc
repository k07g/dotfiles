# Homebrew
export PATH=/opt/homebrew/bin:"$PATH"

autoload -U compinit
compinit -u

# prompt
PROMPT="%{${fg[blue]}%}[%~]%{${reset_color}%}%% "
PROMPT2="%_%% "
SPROMPT="%r is correct? [n,y,a,e]:] "

# git
autoload -Uz vcs_info
setopt prompt_subst
zstyle ':vcs_info:git:*' check-for-changes true
zstyle ':vcs_info:git:*' stagedstr "%F{yellow}!"
zstyle ':vcs_info:git:*' unstagedstr "%F{red}+"
zstyle ':vcs_info:*' formats "%F{green}%c%u[%b]%f"
zstyle ':vcs_info:*' actionformats '[%b|%a]'
precmd () { vcs_info }
RPROMPT='${vcs_info_msg_0_}'

# alias setting
alias ls='eza -Grt changed'
alias ll='eza -l -r -t changed'
alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../..'
alias ..2='cd ../..'
alias ..3='cd ../../..'

function chpwd() { ll }
