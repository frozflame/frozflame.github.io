Get Terminal Size in Python
===========================

With `shutil.get_terminal_size()`:

```python
>>> import shutil
>>> ts = shutil.get_terminal_size()
>>> ts
os.terminal_size(columns=191, lines=47)
>>> ts.lines
47
>>> ts.columns
191
```

Or should I use `os.get_terminal_size()`?


> `shutil.get_terminal_size()` is the high-level function which should normally be used, `os.get_terminal_size()` is the low-level implementation.

(from [Python docs](https://docs.python.org/3/library/os.html#os.get_terminal_size))

So use `shutil.get_terminal_size()` unless you have a reason for `os.get_terminal_size()`.

