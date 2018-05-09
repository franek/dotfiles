# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# Alias
# ---
alias tmux="tmux -2" # to enable 256 colors
alias ls='ls --color'
alias journal="cp -n ~/SparkleShare/dropbox/journal/template.txt ~/SparkleShare/dropbox/journal/$(date +%Y-%m-%d).txt && gedit ~/SparkleShare/dropbox/journal/$(date +%Y-%m-%d).txt &"

# see http://qq.is/article/ssh-keys-through-screen
# Predictable SSH authentication socket location.
#SOCK="/tmp/ssh-agent-$USER-screen"
#if test $SSH_AUTH_SOCK && [ $SSH_AUTH_SOCK != $SOCK ]
#then
#    rm -f /tmp/ssh-agent-$USER-screen
#    ln -sf $SSH_AUTH_SOCK $SOCK
#    export SSH_AUTH_SOCK=$SOCK
#fi

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
export PS1="\h\w:\$(git branch 2>/dev/null | grep '^*' | colrm 1 2)\$ "

source "$HOME/.homeshick/repos/homeshick/homeshick.sh"

# add support for hub (https://github.com/github/hub)
eval "$(hub alias -s)"
