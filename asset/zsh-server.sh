#!/usr/bin/env bash


# ~~ Shell Prompt ~~
function collapse_pwd {
    echo $(pwd | sed -e "s:^$HOME:~:")
}


function fix_venv_prompt {
    NL=$'\n'
    PS1='$NL'$PS1
}


# venv activate
function va {
    NUM=$(find . -path "*/bin/activate" 2> /dev/null | wc -l)
    if [[ ${NUM} -eq 1 ]]; then
        source $(find . -path "*/bin/activate")
    else
        echo 'More than 1 activate script found:'
        find . -path "*/bin/activate"
    fi

    fix_venv_prompt 2> /dev/null
}


function set_prompt {
    NL=$'\n'
    PS1='$NL%{$fg_bold[green]%}%n '
    PS1=$PS1'$(collapse_pwd) '
    PS1=$PS1'$(git_prompt_info)%{$fg_bold[white]%} % '
    PS1=$PS1'$NL\$ %{$reset_color%}'
}

set_prompt