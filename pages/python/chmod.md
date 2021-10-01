Change file permissions (chmod) with Python
============================================

Equivolent to `chmod 777 myfile.txt`:

```python
import os
os.chmod("myfile.txt", int('777', 8))
```
Using `int` with a 2nd argument is clear and compatible.

Literal octal numbers like `0o777` and `0777` may have com

Python has octal literals:
* `0777`  -- python 2 only
* `0o777` -- python 3 and lastest versions 2.7.x


-----------------------------------------------------------

Equivolent to `chmod a+x myfile.txt`:

```python
import os
st = os.stat('myfile.txt')
os.chmod("myfile.txt", st.st_mode | int('111', 8))
```

`st.st_mode` is the current mode of the file.
`st.st_mode | int('111', 8)` will set all x-bits to 1.

The pipe (`|`) is a bitwise OR operator.

-----------------------------------------------------------

References:
* Python docs: [int](https://docs.python.org/3/library/functions.html#int), [os.chmod](https://docs.python.org/3/library/os.html#os.chmod), [os.stat](https://docs.python.org/3/library/os.html#os.chmod)
* How do you do a simple “chmod +x” from within python? [:globe_with_meridians:](https://stackoverflow.com/a/12792002/2925169)
* PEP 3127: Integer Literal Support and Syntax [:globe_with_meridians:](https://www.python.org/dev/peps/pep-3127/) 

