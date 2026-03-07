#!/usr/bin/env bash

[ $1. == -f. ] && unset BCH_BASH_PROFILE
[ ! -z ${BCH_BASH_PROFILE} ] && echo try -f && return

link=${BASH_SOURCE[0]}
this=$(readlink -f ${link})
name=$(basename $this)

export BCH_BASH_PROFILE=${this}

source $(dirname $(dirname $this))/lib/init.sh

dot-enter ${this}
dot-src   ${link}.BACKUP
dot-src   ${this}.d/init.sh
dot-exit  ${this}

[ -z $BCH_BASH_BASHRC ] && echo && source ~/.bashrc
