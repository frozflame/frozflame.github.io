Bash Upper/Lower Case
=====================

### To upper-case

- `^` - first character
- `^^` - whole string

Example:

    $ title="hello world"
    
    $ echo ${title^}
    Hello world
    
    $ echo ${title^^}
    HELLO WORLD

------------------------------------------------------------------------

### To lower-case

- `,` - first character
- `,,` - whole string

Example:

    $ title="HELLO World"
    
    $ echo ${title,}
    hELLO World
    
    $ echo ${title,,}
    hello world
