# Homebrew
export PATH=/opt/homebrew/bin:"$PATH"

autoload -U compinit
compinit -u

# prompt
PROMPT="%{${fg[blue]}%}[%~]%{${reset_color}%}%% "
PROMPT2="%_%% "
SPROMPT="%r is correct? [n,y,a,e]:] "
