#!/bin/bash

LIB=libiconv
VERSION=1.14
URL=http://ftp.gnu.org/gnu/libiconv/libiconv-$VERSION.tar.gz

source ../_helper/helper.sh

hdr $LIB $VERSION

dlo $URL

spr

unp ${URL/*\/}

spr

ftr
