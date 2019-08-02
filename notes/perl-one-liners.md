Perl One-liners
===============

Select matched lines

    perl -ne 'print if /PATTERN/'

Select matched substrings

    perl -ne 'print $1 if /(PATTERN)/'
    perl -ne 'print "-$1\n" if /(PATTERN)/'

-------------------------------------------------

See also: [joyrexus's gist of Perl one-liners](https://gist.github.com//7328094)
