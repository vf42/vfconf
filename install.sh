#!/bin/bash
#
# Installing my config files in the home dir.
#

WRKDIR=`pwd`

for f in `ls -a | egrep -v ".git|install|.dontinstall|^\.$|^\.\.$"`
do
    echo "Installing $f"
    unlink ~/$f
    ln -vs $WRKDIR/$f ~/$f
done

