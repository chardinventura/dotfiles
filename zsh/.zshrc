export ZSH="/home/chardinventura/.oh-my-zsh"
export EDITOR='vim'
export LANG=en_US.UTF-8
export ARCHFLAGS="-arch x86_64"

ZSH_THEME="dracula"

plugins=(git archlinux zsh-syntax-highlighting zsh-autosuggestions battery)

source $ZSH/oh-my-zsh.sh

# Battery
RPROMPT='$(battery_pct_prompt)'

# Aliases
alias refreshZsh="exec zsh"
alias getCapacityBattery="cat /sys/class/power_supply/BAT0/capacity"
alias setFreqCpu="sudo sh $HOME/Programming/bash/cpu.sh"
alias batteryConservationMode="sh $HOME/Programming/bash/batteryConservationMode.sh"
alias ls="echo 'Use exa'"

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
###__conda_setup="$('/opt/anaconda/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
###if [ $? -eq 0 ]; then
###    eval "$__conda_setup"
###else
###    if [ -f "/opt/anaconda/etc/profile.d/conda.sh" ]; then
###        . "/opt/anaconda/etc/profile.d/conda.sh"
###    else
###        export PATH="/opt/anaconda/bin:$PATH"
###    fi
###fi
###unset __conda_setup
# <<< conda initialize <<<
