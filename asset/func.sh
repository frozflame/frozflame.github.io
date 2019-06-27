#!/usr/bin/env bash

function :f {
    find . -iname "*${1}*" 2> /dev/null
}

function :s {
    grep -R "$1" .
}

