#!/bin/bash

LIB=speex
VERSION=1.2rc1
URL=http://downloads.xiph.org/releases/speex/speex-$VERSION.tar.gz

source ../_helper/helper.sh

hdr $LIB $VERSION

dlo $URL

spr

unp ${URL/*\/}

spr

ftr
