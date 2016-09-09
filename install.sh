#!/bin/bash
#
# Installing my config files in the home dir.
#

WRKDIR=`pwd`/src

for f in `ls -a $WRKDIR | egrep -v "^\.$|^\.\.$"`
do
    echo "Installing $f"
    unlink ~/$f
    ln -vs $WRKDIR/$f ~/$f
done

