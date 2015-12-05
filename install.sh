#!/bin/bash
#
# Installing my config files in the home dir.
#

WRKDIR=`pwd`
echo $WRKDIR

unlink ~/.vimrc
ln -s $WRKDIR/.vimrc ~/.vimrc

