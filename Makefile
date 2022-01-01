SRC=$(realpath .)
DST=~/.emacs.d
MAKE=make --no-print-directory
SHELL=/bin/bash

reinstall:
	ln -fs -n ${SRC} ${DST}

uninstall:
	[[ -L ${DST} ]] && rm ${DST} || exit 0

.PHONY: reinstall uninstall 
