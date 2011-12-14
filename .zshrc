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
bindkey "\e[1~" beginning-of-line # Home
bindkey "\e[4~" end-of-line # End
bindkey "\e[5~" beginning-of-history # PageUp
bindkey "\e[6~" end-of-history # PageDown
bindkey "\e[2~" quoted-insert # Ins
bindkey "\e[3~" delete-char # Del
bindkey "\e[5C" forward-word
bindkey "\eOc" emacs-forward-word
bindkey "\e[5D" backward-word
bindkey "\eOd" emacs-backward-word
bindkey "\e\e[C" forward-word
bindkey "\e\e[D" backward-word
bindkey "\e[Z" reverse-menu-complete # Shift+Tab
# for rxvt
bindkey "\e[7~" beginning-of-line # Home
bindkey "\e[8~" end-of-line # End
# for non RH/Debian xterm, can't hurt for RH/Debian xterm
bindkey "\eOH" beginning-of-line
bindkey "\eOF" end-of-line
# for freebsd console
bindkey "\e[H" beginning-of-line
bindkey "\e[F" end-of-line

autoload edit-command-line
zle -N edit-command-line

# Custom aliases
source ~/.zsh_aliases
