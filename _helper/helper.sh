#!/bin/bash
###############################################################################
# helper.sh
# carstene1ns, 2014
###############################################################################

# ui ##########################################################################

hdr() {
  LIB=$1
  VERSION=$2

  echo "############################################################"
  echo "# $LIB $VERSION portlib installation"
  echo "############################################################"
}

ftr() {
  echo "############################################################"
  echo "# END"
  echo "############################################################"
}

spr() {
  echo "############################################################"
}

# download ####################################################################

dlo() {
  if [ -z "$1" ]; then
    echo " => No URL specified."
    exit 1
  fi
  echo " => Downloading '${1/\/}'..."
  wget -nv -N "$1"
}

# extract #####################################################################

mfo() {
  echo " => Removing preceding folder '$1'..."
  for f in $1/* $1/.[!.]* $1/..?*; do
    if [ -e "$f" ]; then
      mv -- "$f" .
    fi
  done
  rmdir $1
}

unp() {
  if [ -z "$1" ]; then
    echo " => No FILE specified."
    exit 1
  fi

  if [ ! -f $1 ]; then
    echo " => FILE '$1' does not exist."
    exit 1
  fi

  echo " => Unpacking '$1'..."

  f=${1%.*}

  case $1 in
    *.tar.bz2) tar xjf $1 ; f=${1%.tar.bz2} ;;
    *.tar.gz) tar xzf $1 ; f=${1%.tar.gz} ;;
    *.tar.xz) tar xJf $1 ; f=${1%.tar.xz} ;;
    *.bz2) bunzip2 $1 ;;
    *.gz) gunzip $1 ;;
    *.xz) unxz $1 ;;
    *.tbz2) tar xjf $1 ;;
    *.tgz) tar xzf $1 ;;
    *.lzma) unlzma $1 ;;
    *.zip) unzip $1 ;;
    *.rar) unrar x -ad $1 ;;
    *.7z) 7z x $1 ;;
    *) echo " => Can not unpack FILE '$1' - unknown archive method." ;;
  esac

  if [ -d $f ]; then
    mfo $f
  fi
  if [ -d ${f,,} ]; then
    mfo ${f,,}
  fi
}

# build #######################################################################

###############################################################################
