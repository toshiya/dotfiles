#
# .zshrc : $ Last Modified : 01/17/2014 14:36:34 $
#

# Utility
source ~/.zsh/git-prompt.sh
function __perl_ps1 ()
{
    if [ -n `type perlbrew 2>&1 > /dev/null && echo "found"` ] ; then
        perlbrew_perl_version=`perlbrew list | grep '*' | sed 's/\* //'`
        if [ "$perlbrew_perl_version" = "" ] ; then
            printf "[system-perl]"
        else
            printf "[$perlbrew_perl_version]"
        fi
    else
        printf "perlbrew not install"
    fi
}

function __ruby_ps1 ()
{
    if [ -n `type rbenv 2>&1 > /dev/null && echo "found"` ] ; then
        version=`rbenv versions | grep "*" | awk '{print $2}'`
        if [ "$version" = "system" ] ; then
            printf "[system-ruby]"
        else
            printf "[$version]"
        fi
    else
        printf "perlbrew not install"
    fi
}

autoload -U compinit
compinit

export LANG=ja_JP.UTF-8
export LC_ALL="ja_JP.UTF-8"

# prompt display setting
setopt PROMPT_SUBST
setopt TRANSIENT_RPROMPT
PROMPT='[%F{red}%B%n%b%f@${HOST}:%F{white}%U%3d%u%f]# '
precmd () {
    RPROMPT="%F{mazenda}%U$(__ruby_ps1)%u%f:%F{mazenda}%U$(__perl_ps1)%u%f:%F{mazenda}%U$(__git_ps1 "%s")%u%f"
}

# command history
HISTFILE=~/.zsh_history
HISTSIZE=10000
SAVEHIST=10000
setopt hist_ignore_dups     # ignore duplication command history list
setopt share_history        # share command history data

# cd -[tab] to show cd history
setopt auto_pushd

# command auto correction
setopt correct

# enable color support of ls and also add handy aliases
if [ -x /usr/bin/dircolors ]; then
    test -r ~/.dircolors && eval "$(dircolors -b ~/.dircolors)" || eval "$(dircolors -b)"
    alias ls='ls --color=auto'
    alias grep='grep --color=auto'
    alias fgrep='fgrep --color=auto'
    alias egrep='egrep --color=auto'
fi

alias ls="ls -G"

# Environmental Variable
