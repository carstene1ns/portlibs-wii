#!/bin/bash

LIB=devil
VERSION=1.7.8
URL=http://downloads.sourceforge.net/openil/DevIL-$VERSION.tar.gz

source ../_helper/helper.sh

hdr $LIB $VERSION

dlo $URL

spr

unp ${URL/*\/}

spr

ftr
