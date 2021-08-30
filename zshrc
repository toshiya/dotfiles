#
# .zshrc : $ Last Modified : 01/17/2014 14:36:34 $
#

# Utility
source ~/.zsh/git-prompt.sh

autoload -U compinit
compinit

# prompt display setting
setopt PROMPT_SUBST
setopt TRANSIENT_RPROMPT
PROMPT='[%B%n%b@%F{red}%B${HOST}%b%f:%F{white}%U%3d%u%f]# '
precmd () {
    RPROMPT="%F{mazenda}%U$(__git_ps1 "%s")%u%f"
}

# command history
HISTFILE=~/.zsh_history
HISTSIZE=10000
SAVEHIST=10000
setopt hist_ignore_dups     # ignore duplication command history list
setopt share_history        # share command history data

# cd -[tab] to show cd history
setopt auto_pushd

# enable color support of ls and also add handy aliases
if [ -x /usr/bin/dircolors ]; then
    test -r ~/.dircolors && eval "$(dircolors -b ~/.dircolors)" || eval "$(dircolors -b)"
    alias ls='ls --color=auto'
    alias grep='grep --color=auto'
    alias fgrep='fgrep --color=auto'
    alias egrep='egrep --color=auto'
fi

alias ls="ls -G"
alias be="bundle exec --"

# ruby
export PATH=$PATH:${HOME}/.rbenv/bin
eval "$(rbenv init -)"

#nodebrew
export PATH=$HOME/.nodebrew/current/bin:$PATH

# go
export PATH=$PATH:/usr/local/go/bin
export GOPATH=$HOME/go
export PATH=$PATH:$GOPATH/bin

# python
export PYENV_ROOT="${HOME}/.pyenv"
export PATH="${PYENV_ROOT}/bin:$PATH"
export PATH="${HOME}/.local/bin:$PATH"

eval "$(pyenv init -)"
