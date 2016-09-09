## -*- shell-script -*-

unset -f cp
unset -f ls
unset -f rm

if ls --color 2>/dev/null >/dev/null ; then
    alias ls='ls --color'
    alias ll='ls --color -lh'
    alias lt='ls --color -lht'
else
    export CLICOLOR=1
    alias ls='ls -F'
    alias ll='ls -lF'
    alias lt='ls -ltF'
fi
