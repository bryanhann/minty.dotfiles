#!/bin/bash
#==========================================================================
# Convenience functions:
#    dbg() : provides debugging if the file [~/DEBUG] exists
#    src() : source a file using dbg()
#==========================================================================

dbg ()  { [ -f ~/DEBUG ] && echo '# dbg:' $* ; }
src ()  { [ -f $1 ]      && dbg . $1 && . $1 ; }

