find utility
============


### Examples

If file name ends with `.html` or contains `.svn` anywhere in the path, it will not match:

    find . ! -name '*.html' ! -path '*.svn*' 

Find all `*.txt` files in the current dir but exclude `./movies` and `./music` folders 
    
    find . -type f -name "*.txt" ! -path "./movies/*" ! -path "./music/*"

Find all `.*` files but ignore `.htaccess`:

    find . -type f \( -iname ".*" ! -iname ".htaccess" \)

Regex:

    find . -iregex ".*\.(js|jsx|html|htm)" 

Note: `-iregex` is the case-insensitive version of `-regex`.



### Questions

What is the difference between using `+` and `;` in `-exec` command? ([answer](https://askubuntu.com/a/558819/219766))

