source ~/.zsh.d/rc.d/autocomp
source ~/.zsh.d/rc.d/history
source ~/.zsh.d/rc.d/aliases
source ~/.zsh.d/rc.d/vcs_info
source ~/.zsh.d/rc.d/bindkey
source ~/.zsh.d/rc.d/prompt

autoload -Uz colors
colors
unsetopt beep


if [ -e /etc/profile.env ] ; then
. /etc/profile.env
fi

export EDITOR=${EDITOR:-/usr/bin/vim}
export PAGER=${PAGER:-/usr/bin/less}

umask 022

PROMPT='${vcs_info_msg_0_}%{${reset_color}%}'

if [ "$EUID" = "0" ] || [ "$USER" = "root" ] ; then
PATH="/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:${ROOTPATH}"
PROMPT="%{${fg_bold[red]}%}${PROMPT}"
else
PATH="/usr/local/bin:/usr/bin:/bin:${PATH}"
PROMPT="%{${fg_bold[red]}%}¬ %{$fg_bold[green]%}%p %{$fg[cyan]%}%c %{$fg_bold[blue]%}%{$fb_bold[blue]%}${PROMPT}"
fi
export PATH
unset ROOTPATH

function bat_info(){
    acpi | cut -d " " -f5
}

MYRPROMPT='$(bat_info)'
reset_rprompt(){
    RPROMPT=$MYRPROMPT
}

reset_rprompt

precmd(){
    vcs_info
    [[ $(tty) = /dev/pts/* ]] && print -Pn "\e]0;%n@%M:%~\a"
}

shopts=$-
setopt nullglob
for sh in /etc/profile.d/*.sh ; do
[ -r "$sh" ] && . "$sh"
done
unsetopt nullglob
set -$shopts
unset sh shopts

export PATH="/usr/local/texlive/2012/bin/x86_64-linux/":$PATH
