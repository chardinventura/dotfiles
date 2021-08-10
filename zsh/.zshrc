export EDITOR='vim'
export ARCHFLAGS="-arch x86_64"
export ZSH="/usr/share/oh-my-zsh"

source $ZSH/oh-my-zsh.sh

# Aliases
alias refreshZsh="exec zsh"
alias getCapacityBattery="cat /sys/class/power_supply/BAT0/capacity"
alias setFreqCpu="sudo sh $HOME/Programming/bash/cpu.sh"
alias batteryConservationMode="sh $HOME/Programming/bash/batteryConservationMode.sh"
alias ls="echo 'Use exa'"

source "$HOME/.zinit/bin/zinit.zsh"
autoload -Uz _zinit
(( ${+_comps} )) && _comps[zinit]=_zinit

# OhMyZsh plugins
zinit ice wait"2" lucid
zinit snippet OMZP::git
zinit snippet OMZP::archlinux
zinit snippet OMZP::battery
zinit snippet OMZP::vi-mode

# other plugins
zinit light zsh-users/zsh-syntax-highlighting
zinit light zsh-users/zsh-autosuggestions

# Theme
zinit light dracula/zsh

# RPROMPT
RPROMPT='$(battery_pct_prompt)'

# Edit line in vim with ctrl-e:
autoload edit-command-line; zle -N edit-command-line
bindkey '^e' edit-command-line

# Use vim keys in tab complete menu:
bindkey -M menuselect 'h' vi-backward-char
bindkey -M menuselect 'k' vi-up-line-or-history
bindkey -M menuselect 'l' vi-forward-char
bindkey -M menuselect 'j' vi-down-line-or-history
bindkey -v '^?' backward-delete-char
