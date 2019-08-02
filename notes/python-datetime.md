Python Date & Time Cheetsheet
=============================

Conversion between `datetime.datetime` and timestamp(`int` or `float`):

| From       | To         | Function                   |
| ---------- | ---------- | -------------------------- |
| timestamp  | `datetime` | `datetime.fromtimestamp()` |
| `datetime` | timestamp  | `datetime.timestamp()`     |


Conversion between `datetime.datetime` and text representation (`str`):


| From       | To         | Function                   |
| ---------- | ---------- | -------------------------- |
| `str`      | `datetime` | `datetime.strptime()` |
| `datetime` | `str`      | `datetime.strftime()`     |
