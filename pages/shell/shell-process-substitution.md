Bash Process Substitution
=========================

Why proc-sub instead of piping?

Example:

    diff <(ls $first_directory) <(ls $second_directory)
    
And sometimes you need to run commands without opening a sub-shell:

Example, `read`:

    some-command | read a b c       # won't work in bash
    read a b c < <(some-command)    # this one works! 
    

