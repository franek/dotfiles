# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# Alias
# ---
alias tmux="tmux -2" # to enable 256 colors
alias ls='ls --color'

# see http://robinwinslow.co.uk/2012/07/20/tmux-and-ssh-auto-login-with-ssh-agent-finally/
COUNT=`tmux ls 2>/dev/null | wc -l`
# We're not in a tmux session
# and no session is running (in case of ssh on the same machine)
if [[ -z "$TMUX" && "$COUNT" -eq 0 ]]
then    
    tmux new;
fi

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
