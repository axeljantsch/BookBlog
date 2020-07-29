#!/bin/sh

if [ "$1_" = "_" -o "-$1" = "--h" ]
then echo "Usage: $0 FILE dim" 
     echo "       FILE is an image file to be resized."
     echo "       dim x dim is the requested new size."
     echo "       The original image is stored as tmp.EXT."
     exit
fi

dim=300
if [ "$2_" = "_" ]
then
    dim=300
else
    m=`expr $2 : "[0-9]*$"`
    if [ $m -eq 0 ]
    then
	echo "Second argument must be numeric, the requested size of the image."
	exit 2
    else
	dim=$2
    fi
    
fi

if [ \! -r $1 ]
then
    eche "File $1 is not readable."
    exit
fi

ext=`expr $1 : "[^.]*.\([a-z]*\)"`
bname=`basename $1 $expr`

mv $1 tmp.$ext
gm convert -size ${dim}x${dim} tmp.$ext -resize ${dim}x${dim} $1

