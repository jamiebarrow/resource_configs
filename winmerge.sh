#!/bin/sh
# $1 is $LOCAL
# $2 is $REMOTE
NULL="/dev/null"
empty="$HOME/gitdifftool.empty"
if [ "$2" = "$NULL" ] ; then
    # added
    "C:/Program Files/WinMerge/WinMergeU.exe" -e -ub -wl -wr "$1" "$empty"
elif [ "$1" = "$NULL" ] ; then
    # removed
    "C:/Program Files/WinMerge/WinMergeU.exe" -e -ub -wl "$empty" "$2"
else
    # modified
    "C:/Program Files/WinMerge/WinMergeU.exe" -e -ub -wl "$1" "$2"
fi