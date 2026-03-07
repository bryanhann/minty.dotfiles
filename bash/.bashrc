#!usr/bin/env bash

link=${BASH_SOURCE[0]}
this=$(readlink -f ${link})
name=$(basename $this)
source $(dirname $this)/.mylib/init.sh

export BCH_BASH_BASHRC=${this}
[ -z ${BCH_BASH_PROFILE} ] && echo warning: .bashrc sourced before .profile
[ -z ${BCH_BASH_PROFILE} ] && source ~/.profile

_log "++[$this]"
_src ${link}.BACKUP
_src ${this}.d/init.sh
_log "++[$this]"
