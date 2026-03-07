#!usr/bin/env bash

__dbg () { [ -f ~/DEBUG ] && echo dbg: $*; }
__log () { echo $* >> ~/DOTFILES.log ; }
_log () { __log $* ; __dbg $* ; }
_exe () { _log $ $* ;  $* ; }
_src () { [ -e $1 ] && _exe source $* ; }
