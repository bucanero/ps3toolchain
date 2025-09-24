#!/bin/sh -e
# psl1ght.sh by Naomi Peori (naomi@peori.ca)

## Download the source code.
wget -O ps3libraries.tar.gz \
     https://codeload.github.com/bucanero/ps3libraries/legacy.tar.gz/refs/heads/master

## Unpack the source code.
rm -Rf psl1ght && mkdir psl1ght && tar --strip-components=1 --directory=psl1ght -xvzf psl1ght.tar.gz

## Create the build directory.
cd psl1ght

## Compile and install.
${MAKE:-make} install-ctrl && ${MAKE:-make} && ${MAKE:-make} install
