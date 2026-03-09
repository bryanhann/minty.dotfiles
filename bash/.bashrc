#!usr/bin/env bash

[ -z ${BCH_DOT_PROFILE} ] && echo warning: .bashrc sourced before .profile
[ -z ${BCH_DOT_PROFILE} ] && source ~/.profile

link=${BASH_SOURCE[0]}
this=$(readlink -f ${link})
name=$(basename $this)
export BCH_DOT_BASHRC=${this}

source $(dirname $this)/.bashlib/init.sh
_log "++[$this]"
_src ${link}.BACKUP
_src ${this}.d/init.sh
_log "++[$this]"
