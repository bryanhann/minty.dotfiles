#!usr/bin/env bash

link=${BASH_SOURCE[0]}
this=$(readlink -f ${link})
#this=$(readlink -f ${BASH_SOURCE[0]})
name=$(basename $this)
export BCH_BASH_BASHRC=${this}

[ $1. == -f. ] && unset BCH_BASH_PROFILE
[ -z ${BCH_BASH_PROFILE} ] && echo warning: .bashrc sourced before .profile
[ -z ${BCH_BASH_PROFILE} ] && source ~/.profile

source $(dirname $(dirname $this))/lib/init.sh

dot-enter ${this}
dot-src   ${link}.BACKUP
dot-src   $(dirname $this)/${name#?}
dot-exit  ${this}
