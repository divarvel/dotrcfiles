#! /usr/bin/env zsh

zsh_home=$(readlink -f $(dirname $0)/..)
zsh_home=${zsh_home#${ZDOTDIR:-$HOME}/}

cd ${ZDOTDIR:-$HOME}

## Cleaning existing conf
[[ -h .zshenv ]] && rm .zshenv
[[ -h .zprofile ]] && rm .zprofile
[[ -h .zshrc ]] && rm .zshrc
[[ -h .zlogin ]] && rm .zlogin
[[ -h .zlogout ]] && rm .zlogout

[[ -f .zshenv ]] && mv .zshenv{,.backup}
[[ -f .zprofile ]] && mv .zprofile{,.backup}
[[ -f .zshrc ]] && mv .zshrc{,.backup}
[[ -f .zlogin ]] && mv .zlogin{,.backup}
[[ -f .zlogout ]] && mv .zlogout{,.backup}

## Linking the new one
[[ -f $zsh_home/env ]] && ln -s $zsh_home/env .zshenv
[[ -f $zsh_home/profile ]] && ln -s $zsh_home/profile .zprofile
[[ -f $zsh_home/rc ]] && ln -s $zsh_home/rc .zshrc
[[ -f $zsh_home/login ]] && ln -s $zsh_home/login .zlogin
[[ -f $zsh_home/logout ]] && ln -s $zsh_home/logout .zlogout
