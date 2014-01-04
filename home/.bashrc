# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# Start tmux
if [ `which tmux 2> /dev/null` -a -z "$TMUX" ]; then
    tmux -2 attach || tmux -2 new; exit
fi

# Alias
# ---
alias tmux="tmux -2" # to enable 256 colors
alias ls='ls --color'


# Ajoute la date dans l'historique des commandes (history)
export HISTTIMEFORMAT="%d/%m/%Y %H:%M:%S "

# avoid duplicates..
export HISTCONTROL=ignoredups:erasedups
# append history entries..
shopt -s histappend

# After each command, save and reload history
export PROMPT_COMMAND="history -a; history -c; history -r; $PROMPT_COMMAND"




# User specific aliases and functions

PATH=$PATH:$HOME/.rvm/bin # Add RVM to PATH for scripting

source "$HOME/.homesick/repos/homeshick/homeshick.sh"
