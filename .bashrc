case $- in
  *i*) ;;
    *) return;;
esac

export OSH=/home/luka/.config/oh-my-bash

OSH_THEME="simple"

OMB_USE_SUDO=true

completions=(
  git
  composer
  ssh
)

aliases=(
  general
)

plugins=(
  git
  bashmarks
  zoxide
)

source "$OSH"/oh-my-bash.sh

[[ $- != *i* ]] && return

if [ -z "${DISPLAY}" ] && [ "${XDG_VTNR}" -eq 1 ]; then
	          exec startx
fi

alias g='git'
alias ls='exa -alh'
alias code='vscodium'
alias docker='sudo docker'
alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../..'
alias config='/usr/bin/git --git-dir=/home/luka/dotfiles --work-tree=/home/luka'
alias wiki='vim ~/Documents/Notes/index.md'
alias mutt='neomutt'
export PATH="$PATH:/snap/bin:/home/luka/.local/bin"
export EDITOR="vim"
export XDG_CONFIG_HOME="/home/youshitsune/.config/"


# bun
export BUN_INSTALL="$HOME/.config/.bun"
export PATH=$BUN_INSTALL/bin:/usr/bin/watcom/binl64:$PATH
. "$HOME/.cargo/env"
export NNN_OPTS="H"
