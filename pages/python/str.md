Python Strings Cheatsheet
=========================

### Format numbers

Hexadecimal (base 16):

    >>> hex(16)
    '0x10'
    >>> format(16, 'x')
    '10'

Decimal points:

    >>> format(3.14159,".2f")
    '3.14'
    >>> '{:.2f}'.format(3.14159)
    '3.14'

Left-padding with zeros:

    >>> '{:04}'.format(64)
    '0064'


### Is it a number?

`isdecimal` vs `isdigit` vs `isnumeric`:

    >>> c = '\u2155'
    >>> print(c)
    ⅕
    >>> c.isdecimal(), c.isdigit(), c.isnumeric()
    (False, False, True)
    >>> import unicodedata
    >>> unicodedata.numeric(c)
    0.2

Another example:

    >>> c = '\u00B2'
    >>> print(c)
    ²
    >>> c.isdecimal(), c.isdigit(), c.isnumeric()
    (False, True, True)
    >>> unicodedata.numeric(c)
    2.0

Sorted from narrow to broad, `isdecimal`, `isdigit` and `isnumeric`.
