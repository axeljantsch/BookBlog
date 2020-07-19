#!/bin/sh

if [ "$1_" = "_" -o "-$1" = "--h" ]
then echo "Usage: $0 FILE"
     echo "       FILE is an image file to be resized."
     echo "       The original image is stored as tmp.EXT."
     exit
fi


if [ \! -r $1 ]
then
    eche "File $1 is not readable."
    exit
fi

ext=`expr $1 : "[^.]*.\([a-z]*\)"`
bname=`basename $1 $expr`

mv $1 tmp.$ext
gm convert -size 300x300 tmp.$ext -resize 300x300 $1

