Shell Arithmetic
================

Max of 2 numbers:

    $ a=10
    $ b=20
    $ max=$(( a > b ? a : b ))
    $ echo $max

Exponentiation operator is `**`, like Python:

    $ echo $(( 2 ** 10 ))
    1024

"Evaluation is done in fixed-width integers with no check for overflow.":

    $ echo $(( 1.6 / 2 ))
    bash: 1.6 / 2 : syntax error: invalid arithmetic operator (error token is ".6 / 2 ")

More on operators: [GNU Bash manual: Shell-Arithmetic](https://www.gnu.org/software/bash/manual/html_node/Shell-Arithmetic.html#Shell-Arithmetic)

Length of an array:

    $ arr=(a b)
    $ echo $(( 2 ** ${#arr[@]} ))
    4
    
    $ arr=(a b c)
    $ echo $(( 2 ** ${#arr[@]} ))
    8
