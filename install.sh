#!/bin/sh -x


for file in _.*
do
    if [ ! -e ~/${file#_} ]
    then
        ln -s `realpath $file` ~/${file#_}
    fi
done
