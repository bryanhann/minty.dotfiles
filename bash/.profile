#!/usr/bin/env bash

link=${BASH_SOURCE[0]}
this=$(readlink -f ${link})
name=$(basename $this)
source $(dirname $this)/.bashlib/init.sh

[ $1. == -f. ] && unset BCH_DOT_PROFILE
[ ! -z ${BCH_DOT_PROFILE} ] && echo try -f && return
export BCH_DOT_PROFILE=${this}

_log "++[$this]"
_src ${link}.BACKUP
_src ${this}.d/init.sh
_log "++[$this]"

[ -z ${BCH_DOT_BASHRC} ] && cat <<EOF

You are in a login shell.
The command 'exit' is overwritten.
Enter 'builtin exit' or 'logout' instead.
Enter 'bash' for a bash shell.

EOF
