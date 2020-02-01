Shell Pattern Matching
======================

Where?
- argument globbing
- case-esac statement
- test `[[ $name == *-trump ]]`
- test `[[ $name =~ /REGEX/ ]]`
- command `find -name "*.min.js"`
- replacement `${name....}` -- TODO
- grep and sed

------------------------------------------------------------

glob: `*`, `?`, `[..]` -- also supported by Python `glob` module.

extglob:

| extglob pattern | regular expression equivolent |
|:---------------:|:-----------------------------:|
|  `?(patterns)`  |          `(regex)?`           |
|  `*(patterns)`  |          `(regex)*`           |
|  `+(patterns)`  |          `(regex)+`           |
|  `@(patterns)`  |           `(regex)`           |
|  `!(patterns)`  |                               |

How to enable extglob?

    shopt -s extglob
    
To disable:

    shopt -u extglob

Query status:

    shopt extglob
    shopt | grep glob
    
Note: These are commands in _Bash_.

--------------------------------------

Globbing related shell options:

* nullglob: `*.no-match` => empty
* failglob: `*.no-match` => error on this command
* nocaseglob: case-insensitive
* dotglob: match filenames with leading dots
* GLOBIGNORE: a colon-separated list of patterns to be excluded from globbing

Query status:

    shopt | grep glob

FAQ: Why is nullglob not default? ([204803 why-is-nullglob-not-default](https://unix.stackexchange.com/questions/204803/why-is-nullglob-not-default))

Short answer: Think about different behaviors of `ls *.txt` with and without nullglob.





