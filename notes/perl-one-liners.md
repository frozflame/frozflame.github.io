Perl One-liners
===============

Select matched lines

    perl -ne 'print if /PATTERN/'

Select matched substrings

    perl -ne 'print $1 if /(PATTERN)/'
    perl -ne 'print "-$1\n" if /(PATTERN)/'

-------------------------------------------------

Common options for one-liners:

`-n`: `while (<>) { ... }`
`-p`: `-n` + `print`
`-e`: execute a one-liner (like `-c` in Python)

For more options, `perl -h`.

-------------------------------------------------

Want to use Python? See these projects:

* oneliner ([docs](https://python-oneliner.readthedocs.io/en/latest/))
* pyp ([code.google.com](https://code.google.com/archive/p/pyp/))


-------------------------------------------------

See also: 

* joyrexus's gist of Perl one-liners [:globe_with_meridians:](https://gist.github.com//7328094)
* Introduction to Perl one-liners (CATONMAT) [:globe_with_meridians:](https://catonmat.net/introduction-to-perl-one-liners)