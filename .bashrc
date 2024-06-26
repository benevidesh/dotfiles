PROMPT_COMMAND='printf "\033]0;%s@%s:%s\007" "${USER}" "${HOSTNAME%%.*}" "${PWD/#$HOME/"~"}"'

eval "$(starship init bash)"

# ~/.bashrc: executed by bash(1) for non-login shells.
# see /usr/share/doc/bash/examples/startup-files (in the package bash-doc)
# for examples

# If not running interactively, don't do anything
case $- in
    *i*) ;;
      *) return;;
esac

#################################################################
# READLINE
#################################################################
export INPUTRC="/home/benevidesh/.config/inputrc"
export PATH="${PATH}:$HOME/.local/bin"

#################################################################
# HISTORY
#################################################################
# don't put duplicate lines or lines starting with space in the history.
# See bash(1) for more options
HISTCONTROL=ignoreboth

# append to the history file, don't overwrite it
shopt -s histappend

# for setting history length see HISTSIZE and HISTFILESIZE in bash(1)
HISTSIZE=100000
HISTFILESIZE=100000

# check the window size after each command and, if necessary,
# update the values of LINES and COLUMNS.
shopt -s checkwinsize

shopt -s expand_aliases

# If set, the pattern "**" used in a pathname expansion context will
# match all files and zero or more directories and subdirectories.
#shopt -s globstar

# make less more friendly for non-text input files, see lesspipe(1)
[ -x /usr/bin/lesspipe ] && eval "$(SHELL=/bin/sh lesspipe)"

# set variable identifying the chroot you work in (used in the prompt below)
if [ -z "${debian_chroot:-}" ] && [ -r /etc/debian_chroot ]; then
    debian_chroot=$(cat /etc/debian_chroot)
fi

# set a fancy prompt (non-color, unless we know we "want" color)
case "$TERM" in
    xterm-color|*-256color) color_prompt=yes;;
esac

# uncomment for a colored prompt, if the terminal has the capability; turned
# off by default to not distract the user: the focus in a terminal window
# should be on the output of commands, not on the prompt
#force_color_prompt=yes

if [ -n "$force_color_prompt" ]; then
    if [ -x /usr/bin/tput ] && tput setaf 1 >&/dev/null; then
	# We have color support; assume it's compliant with Ecma-48
	# (ISO/IEC-6429). (Lack of such support is extremely rare, and such
	# a case would tend to support setf rather than setaf.)
	color_prompt=yes
    else
	color_prompt=
    fi
fi

if [ "$color_prompt" = yes ]; then
    PS1='${debian_chroot:+($debian_chroot)}\[\033[01;30m\]\[\033[00m\]\[\033[01;30m\]\w\[\033[00m\]\$ '
else
    PS1='${debian_chroot:+($debian_chroot)}\u@\h:\w\$ '
fi
unset color_prompt force_color_prompt

# If this is an xterm set the title to user@host:dir
case "$TERM" in
xterm*|rxvt*|st-*)
    PS1="\[\e]0;${debian_chroot:+($debian_chroot)}\u@\h: \w\a\]$PS1"
    ;;
*)
    ;;
esac

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

# colored GCC warnings and errors
#export GCC_COLORS='error=01;31:warning=01;35:note=01;36:caret=01;32:locus=01:quote=01'

# some more ls aliases
# alias ll='ls -alF'
alias la='ls -A'
# alias ll='ls -CF'

# Add an "alert" alias for long running commands.  Use like so:
#   sleep 10; alert
alias alert='notify-send --urgency=low -i "$([ $? = 0 ] && echo terminal || echo error)" "$(history|tail -n1|sed -e '\''s/^\s*[0-9]\+\s*//;s/[;&|]\s*alert$//'\'')"'

# Alias definitions.
# You may want to put all your additions into a separate file like
# ~/.bash_aliases, instead of adding them here directly.
# See /usr/share/doc/bash-doc/examples in the bash-doc package.

if [ -f ~/.bash_aliases ]; then
    . ~/.bash_aliases
fi

# enable programmable completion features (you don't need to enable
# this, if it's already enabled in /etc/bash.bashrc and /etc/profile
# sources /etc/bash.bashrc).
if ! shopt -oq posix; then
  if [ -f /usr/share/bash-completion/bash_completion ]; then
    . /usr/share/bash-completion/bash_completion
  elif [ -f /etc/bash_completion ]; then
    . /etc/bash_completion
  fi
fi

#########################################################################
# FZF
#########################################################################
#source /usr/share/doc/fzf/examples/key-bindings.bash
#source /usr/share/bash-completion/completions/fzf

export FZF_DEFAULT_OPTS="--reverse --multi \
                         --preview='head {}' \
                         --preview-window=66%,top,hidden,wrap \
                         --color=bw \
                         --bind '?:toggle-preview'"


# fuzzy open
fo() {
  IFS=$'\n' out=("$(fzf --query="$1" --exit-0 --expect=enter,ctrl-o,ctrl-y)")
  key=$(head -1 <<< "$out")
  file=$(head -2 <<< "$out" | tail -1)
  if [ -n "$file" ]; then
    [ "$key" = enter ] && xdg-open "$file" || >/dev/null 2>&1
    [ "$key" = ctrl-y ] && echo "$file" | copy || >/dev/null 2>&1
  fi
}

# fuzzy cd
fd() {
  local dir
  dir=$(find ${1:-.} -path '*/\.*' -prune \
                  -o -type d -print 2> /dev/null | fzf --preview 'tree -C {} | head -200') &&
  cd "$dir"
}

source /usr/share/fzf/key-bindings.bash
source /usr/share/fzf/completion.bash
#########################################################################
# NVIM
#########################################################################
export NVIM_LISTEN_ADDRESS=/tmp/nvimsocket
export EDITOR=nvim
export VISUAL=nvim

export RESOURCES=$HOME/02-Resources
#########################################################################
# TTY COLORSCHEME (SOLARIZED)
#########################################################################
#if [ "$TERM" = "linux" ]; then
#	printf %b '\e[40m' '\e[8]' # set default background to color 0 'dracula-bg'
#	printf %b '\e[37m' '\e[8]' # set default foreground to color 7 'dracula-fg'
#	printf %b '\e]P0282a36'    # redefine 'black'          as 'dracula-bg'
#	printf %b '\e]P86272a4'    # redefine 'bright-black'   as 'dracula-comment'
#	printf %b '\e]P1ff5555'    # redefine 'red'            as 'dracula-red'
#	printf %b '\e]P9ff7777'    # redefine 'bright-red'     as '#ff7777'
#	printf %b '\e]P250fa7b'    # redefine 'green'          as 'dracula-green'
#	printf %b '\e]PA70fa9b'    # redefine 'bright-green'   as '#70fa9b'
#	printf %b '\e]P3f1fa8c'    # redefine 'brown'          as 'dracula-yellow'
#	printf %b '\e]PBffb86c'    # redefine 'bright-brown'   as 'dracula-orange'
#	printf %b '\e]P4bd93f9'    # redefine 'blue'           as 'dracula-purple'
#	printf %b '\e]PCcfa9ff'    # redefine 'bright-blue'    as '#cfa9ff'
#	printf %b '\e]P5ff79c6'    # redefine 'magenta'        as 'dracula-pink'
#	printf %b '\e]PDff88e8'    # redefine 'bright-magenta' as '#ff88e8'
#	printf %b '\e]P68be9fd'    # redefine 'cyan'           as 'dracula-cyan'
#	printf %b '\e]PE97e2ff'    # redefine 'bright-cyan'    as '#97e2ff'
#	printf %b '\e]P7f8f8f2'    # redefine 'white'          as 'dracula-fg'
#	printf %b '\e]PFffffff'    # redefine 'bright-white'   as '#ffffff'
#	clear
#fi
Projects () {
    PS3="> "
    PROJECTS="$HOME/Projects"
    LST_PR=$(ls --color=never $PROJECTS)

    printf "%s\n" "Choose a project:"
    select project in $LST_PR; do
        opendir="$PROJECTS/$project"
        cd "${opendir}"
        break
done
}

#############################################################################
# UTILS
#############################################################################
# j -journal
#
function j () {
    local dailyLogAddress=$(date +%F -d "$*")
    local dailyLogLocation=$JRNL/$dailyLogAddress
    $EDITOR $dailyLogLocation
}

#  ex - archive extractor
#  usage: ex <file>
ex ()
{
  if [ -f $1 ] ; then
    case $1 in
      *.tar.bz2)   tar xjf $1   ;;
      *.tar.gz)    tar xzf $1   ;;
      *.bz2)       bunzip2 $1   ;;
      *.rar)       unrar x $1     ;;
      *.gz)        gunzip $1    ;;
      *.tar)       tar xf $1    ;;
      *.tbz2)      tar xjf $1   ;;
      *.tgz)       tar xzf $1   ;;
      *.zip)       unzip $1     ;;
      *.Z)         uncompress $1;;
      *.7z)        7z x $1      ;;
      *)           echo "'$1' cannot be extracted via ex()" ;;
    esac
  else
    echo "'$1' is not a valid file"
  fi
}

parse_git_branch() {
     git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/(\1)/'
}
# export PS1="\[\e[01;35m\]\W\[\e[32m\] \$(parse_git_branch)\[\e[00m\] "
# export LS_COLORS+=":di=01;38"

# if [ -x "$(command -v tmux)" ] && [ -n "${DISPLAY}" ] && [ -z "${TMUX}" ]; then
    # exec tmux new-session -A -s ${USER} >/dev/null 2>&1
# fi
#
# alias ls="lsd"
