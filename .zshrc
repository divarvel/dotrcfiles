# Path to your oh-my-zsh configuration.
export ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
export ZSH_THEME="robbyrussell"

# Set to this to use case-sensitive completion
# export CASE_SENSITIVE="true"

# Comment this out to disable weekly auto-update checks
# export DISABLE_AUTO_UPDATE="true"

# Uncomment following line if you want to disable colors in ls
# export DISABLE_LS_COLORS="true"

# Uncomment following line if you want to disable autosetting terminal title.
# export DISABLE_AUTO_TITLE="true"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(git github vi-mode)

source $ZSH/oh-my-zsh.sh

# Customize to your needs...

# Misc exports
export EDITOR=/usr/bin/vim
export PATH=$PATH:~/.local/opt/android-sdk-linux_86/tools/:~/bin/
export PAGER=less

# Autoloads
autoload -U colors
autoload -U compinit compinit
compinit bashcompletion
autoload -U zfinit
autoload -U zmv

# Allow linefeeds in quoted expressions
unsetopt cshjunkiequotes
# Don't save the current line in the history if it's the same as the line
# above
setopt histignoredups
setopt histignorespace # Don't save lines beginning with a space
setopt interactivecomments # allow comments in command lines
setopt noclobber # don't accidentally overwrite files with >
setopt extendedglob

# Auto completion
source ~/.zsh_autocomp

#Useful shortcuts (not SO useful if you use vi-mode, but still quite handy)
typeset -g -A key
bindkey '^I' complete-word # complete on tab, leave expansion to _expand
#WORDCHARS=${WORDCHARS//[&=\/;!#%{]}
#WORDCHARS=${WORDCHARS//[&=\  ;!#%{]}
WORDCHARS='*?_-.[]~=&;!#$%^(){}<>'
#bindkey -v
bindkey -e
bindkey '^?' backward-delete-char
bindkey '^[[1~' beginning-of-line
bindkey '^[[5~' up-line-or-history
bindkey '^[[3~' delete-char
bindkey '^[[4~' end-of-line
bindkey '^[[6~' down-line-or-history
bindkey '^[[A' up-line-or-search
bindkey '^[[D' backward-char
bindkey '^[[B' down-line-or-search
bindkey '^[[C' forward-char

autoload edit-command-line
zle -N edit-command-line

# Custom aliases
source ~/.zsh_aliases
