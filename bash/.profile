#!/usr/bin/env bash

link=${BASH_SOURCE[0]}
this=$(readlink -f ${link})
name=$(basename $this)
source $(dirname $this)/.mylib/init.sh

[ $1. == -f. ] && unset BCH_BASH_PROFILE
[ ! -z ${BCH_BASH_PROFILE} ] && echo try -f && return
export BCH_BASH_PROFILE=${this}

_log "++[$this]"
_src ${link}.BACKUP
_src ${this}.d/init.sh
_log "++[$this]"

[ -z ${BCH_BASH_BASHRC} ] && source ~/.bashrc
