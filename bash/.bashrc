#!usr/bin/env bash

this=$(readlink -f ${BASH_SOURCE[0]})
name=$(basename $this)
export BCH_BASH_BASHRC=${this}

[ $1. == -f. ] && unset BCH_BASH_PROFILE
[ -z ${BCH_BASH_PROFILE} ] && echo warning: .bashrc sourced before .profile
[ -z ${BCH_BASH_PROFILE} ] && source ~/.profile

source $(dirname $(dirname $this))/lib/init.sh

dot-enter ${this}
dot-src   ${BCH_DOTFILES_BACKUP}/${name}
dot-src   $(dirname $this)/${name#?}
dot-exit  ${this}
