#!/bin/bash

LIB=expat
VERSION=2.1.0
URL=http://downloads.sourceforge.net/expat/expat-$VERSION.tar.gz

source ../_helper/helper.sh

hdr $LIB $VERSION

dlo $URL

spr

unp ${URL/*\/}

spr

ftr
