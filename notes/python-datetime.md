Python Date & Time Cheetsheet
=============================

import names:

```python3
import pytz
from datetime import datetime, date, time
```

Conversion between `datetime` and timestamp(`int` or `float`):

| From       | To         | Function                   |
| ---------- | ---------- | -------------------------- |
| timestamp  | `datetime` | `datetime.fromtimestamp()` |
| `datetime` | timestamp  | `datetime.timestamp()`     |

Example
```python
>>> now = datetime.now()
>>> now.timestamp()
1564753072.794328
>>> datetime.fromtimestamp(1600 * 1000 * 1000)  # when timestamp reach 1.6bn? 
datetime.datetime(2020, 9, 13, 20, 26, 40)
>>> datetime.fromtimestamp(0)  # my local time zone: +8
datetime.datetime(1970, 1, 1, 8, 0)
>>> datetime.fromtimestamp(0, pytz.utc)
datetime.datetime(1970, 1, 1, 0, 0, tzinfo=<UTC>)
```

----------------------------------------------------

Conversion between `datetime` and text representation (`str`):


| From       | To         | Function                   |
| ---------- | ---------- | -------------------------- |
| `str`      | `datetime` | `datetime.strptime()` |
| `datetime` | `str`      | `datetime.strftime()`     |

where p = parse and f = format.

Example
```python
>>> now = datetime.now()
>>> now.strftime('%Y%m%d-%H%M%S')
'20190802-213752'
>>> datetime.strptime('20200101-000000', '%Y%m%d-%H%M%S')
datetime.datetime(2020, 1, 1, 0, 0)
```
