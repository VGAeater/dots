


# The following lines were added by compinstall

zstyle ':completion:*' completer _complete _ignored
zstyle :compinstall filename '/home/strat/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall
# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1000000
SAVEHIST=1000000
bindkey -v
setopt no_nomatch
# End of lines configured by zsh-newuser-install

function statstring {
RC=$?
  if [ "0" != $RC ]; then
    printf "[$RC] "
  fi
}

export PATH=$PATH:~/.local/bin/
export EDITOR=nvim
export MANPAGER='nvim +Man!'

case $- in
    *i*) ;;
      *) return;;
esac

# if [ "$TERM" = "linux" ]; then
#     printf "\e]P0181818" # Black
#     printf "\e]P1960042" # Red
#     printf "\e]P2ff0000" # Red
#     printf "\e]P3FF5D05" # Red
#     printf "\e]P4FF2044" # Red
#     printf "\e]P5FFEDCF" # Red
#     printf "\e]P66F0027" # Red
#     printf "\e]P7FFDAF1" # Red
#     printf "\e]P8333333" # Red
#     printf "\e]P9870300" # Red
#     printf "\e]Pa690000" # Red
#     printf "\e]Pb6F2700" # Red
#     printf "\e]Pc333333" # Red
#     printf "\e]PdFFFFB5" # Bright Cyan
#     printf "\e]PeF50056" # Bright White
#     printf "\e]PfFFE6DA" # Bright White
# fi

# enable color support of ls and also add handy aliases
if [ -x /usr/bin/dircolors ]; then
    test -r ~/.dircolors && eval "$(dircolors -b ~/.dircolors)" || eval "$(dircolors -b)"
    alias ls='ls --color=auto'
    #alias dir='dir --color=auto'
    #alias vdir='vdir --color=auto'

    alias grep='grep --color=auto'
    alias fgrep='fgrep --color=auto'
    alias egrep='egrep --color=auto'
fi

#export GREP_COLORS="sl=97;48;5;236:cx=37;40:mt=30;48;5;186:fn=38;5;197:ln=38;5;154:bn=38;5;141:se=38;5;81"
#export LS_COLORS="di=34:ln=35:so=32:pi=33:ex=31:bd=34;46:cd=34;43:su=30;41:sg=30;46:tw=30;42:ow=30;43"

alias H="Hyprland && logout"
alias f="pfetch"
alias fetch="fastfetch --logo-width 33 --logo ~/boykisser.png --logo-type kitty-direct"
alias r="cd ~ && clear"
alias :q="exit && logout"
#alias comprun="./build && ./run"
alias kms="echo -e \"\033[31m        ♥   <(^.^)>  ♥ \nStop coding you fucking idiot\033[0m\""

# Alias's for archives
alias mktar='tar -cvf'
alias mkbz2='tar -cvjf'
alias mkgz='tar -cvzf'
alias untar='tar -xvf'
alias unbz2='tar -xvjf'
alias unxz='tar -xvJf'
alias ungz='tar -xvzf'

# PS1='\[\033[1;31m\]$(statstring)\[\033[0m\]\[\033[1;32m\]\u@\h\[\033[0m\] \[\033[1;34m\]\w\[\033[0m\] \$ '

# PS1='\[\033[1;33m\]┌─[\[\033[35m\]\t\[\033[33m\]]─[\[\033[32m\]\u@\h\[\033[33m\]]─[\[\033[34m\]\w\[\033[33m\]]\n\[\033[33m\]└─> \[\033[31m\]$(statstring)\[\033[36m\]$ \[\033[0m\]'
PROMPT="%F{yellow}┌─[%F{magenta}%*%F{yellow}]─[%F{green}%n@%m%F{yellow}]─[%F{blue}%~%F{yellow}]"$'\n'"└─>%F{red}%(?.. [%?]) %F{cyan}%(!.#.$)%f "

# PS1='\[\033[1;30;42m\]\u\[\033[32;46m\]🭬\[\033[30m\]\h\[\033[34m\]🭨\[\033[44;30m\]\w\[\033[0;34m\]🭬\[\033[0m\]'

# PS1=$(printf "╔╡\\\\t╞%$(($(tput cols) - 13 + $(echo -n $? | wc -c)))s╡$\\?╞\n╚╡" | sed 's/ /═/g')
