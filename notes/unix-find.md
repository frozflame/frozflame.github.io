find utility
============

If file name ends with `.html` or contains `.svn` anywhere in the path, it will not match:

    find . ! -name '*.html' ! -path '*.svn*' 

Find all `*.txt` files in the current dir but exclude `./Movies` and `./Music` folders 
    
    find . -type f -name "*.txt" ! -path "./Movies/*" ! -path "./Music/*"

Find all `.*` files but ignore `.htaccess`:

    find . -type f \( -iname ".*" ! -iname ".htaccess" \)


