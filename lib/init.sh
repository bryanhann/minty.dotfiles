#!/bin/bash

export BCH_DOTFILES=$(dirname $(dirname ${BASH_SOURCE[0]}))


dot-dbg ()  {
    [ -f ~/DEBUG ] || return
    echo dbg: $*
}
dot-src ()  {
    [ ! -f $1 ] && return
    dot-enter $1
    . $1
    dot-exit $1
}

dot-enter () { dot-dbg "++[$1]"; }
dot-exit () { dot-dbg "--[$1]"; }

