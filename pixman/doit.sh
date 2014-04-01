#!/bin/bash

LIB=pixman
VERSION=0.32.4
URL=http://cairographics.org/releases/pixman-$VERSION.tar.gz

source ../_helper/helper.sh

hdr $LIB $VERSION

dlo $URL

spr

unp ${URL/*\/}

spr

ftr
