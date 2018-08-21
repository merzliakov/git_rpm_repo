#!/bin/bash


for f in `find ./rpm -iname *.rpm`; do
    name=$(echo `basename $f` | sed -e 's/\(tlapp-[^-]*\).*/\.\/rpm\/\1.rpm/g')
    echo $name
    mv $f $name
done

