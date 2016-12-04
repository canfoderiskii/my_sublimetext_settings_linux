#!/bin/bash

cd $(dirname $0)

PORTABLE_BASE_PATH=$(pwd)

PORTABLE_DIR_SRC=${PORTABLE_BASE_PATH}/sublime-text-3
PORTABLE_DIR_DEST=~/.config/sublime-text-3

if [ -L ${PORTABLE_DIR_DEST} ]; then
	rm ${PORTABLE_DIR_DEST}
fi

if [ -d ${PORTABLE_DIR_DEST} ]; then
	echo "folder exists inside HOME folder, please make sure that important files are backed-up"
	echo "operation aborted.."; exit 1;
fi

ln -s ${PORTABLE_DIR_SRC} ${PORTABLE_DIR_DEST}
