# .bash_profile

# Get the aliases and functions
if [ -f ~/.bashrc ]; then
        . ~/.bashrc
fi

# User specific environment and startup programs

PATH=$PATH:$HOME/.local/bin:$HOME/bin
shopt -s autocd
export PATH

# Options
set -o vi                                                                               # vim mode for bash
shopt -s autocd                                                                         # cd into a directory by typing its name

# Aliases

alias ll='ls -lAtrh --color'                                                            # `ll` ala Linux
alias myip='curl http://ipecho.net/plain; echo'                                         # Get Public IP
alias c='clear'                                                                         # Clear terminal
alias v='vim'                                                                           # Saving keystrokes for vim
alias sv='sudo vim'                                                                     # Run vim w/ sudo
alias reload='source ~/.bash_profile'                                                   # Reload bash_profile
alias ytd="youtube-dl -f bestvideo+bestaudio "                                          # youtube-dl best video/audio
alias ga='git add'                                                                      # Save keystrokes for git
alias gac='git add -A && git commit -m'
alias pull='git pull'
alias push='git push'
alias gs='git status'
alias gc='git checkout'
alias gd='git diff'

# Colour

export PS1="\[\033[36m\]\u\[\033[m\]@\[\033[32m\]\h:\[\033[33;1m\]\w\[\033[m\]\$ "      # Pretty colours!
export CLICOLOR=1
export LSCOLORS='di=34:ln=35:so=32:pi=33:ex=31:bd=34;46:cd=34;43:su=30;41:sg=30;46:tw=30;42:ow=30;43'

# File Management

   extract () {                                                                         # Extract basically all known formats
        if [ -f $1 ] ; then
          case $1 in
            *.tar.bz2)   tar xjf $1     ;;
            *.tar.gz)    tar xzf $1     ;;
            *.bz2)       bunzip2 $1     ;;
            *.rar)       unrar e $1     ;;
            *.gz)        gunzip $1      ;;
            *.tar)       tar xf $1      ;;
            *.tbz2)      tar xjf $1     ;;
            *.tgz)       tar xzf $1     ;;
            *.zip)       unzip $1       ;;
            *.Z)         uncompress $1  ;;
            *.7z)        7z x $1        ;;
            *)     echo "'$1' cannot be extracted via extract()" ;;
             esac
         else
             echo "'$1' is not a valid file"
         fi
    }
