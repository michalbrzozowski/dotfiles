#!/bin/bash


TOGGLE=$HOME/.toggle

if [ ! -e $TOGGLE ]; then
    touch $TOGGLE
    synclient TouchPadOff=0
else
    rm $TOGGLE
    synclient TouchPadOff=1
fi

