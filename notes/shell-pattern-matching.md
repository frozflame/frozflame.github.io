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


Bash glob: `*`, `?`, `[..]`

extglob:

| extglob pattern | regular expression equivolent |
|:---------------:|:-----------------------------:|
|  `?(patterns)`  |          `(regex)?`           |
|  `*(patterns)`  |          `(regex)*`           |
|  `+(patterns)`  |          `(regex)+`           |
|  `@(patterns)`  |           `(regex)`           |
|  `!(patterns)`  |                               |
