# If not running interactively, don't do anything
case $- in
    *i*) ;;
      *) return;;
esac

for pth in $(ls $(dirname ${BASH_SOURCE[0]})/[0-9]*); do
    dot-dbg  $(basename $pth)
    source $pth
    #dot-src  $pth
done

