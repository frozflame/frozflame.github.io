
Zsh setopt extendedglob
=======================

Enable:

```zsh
setopt extendedglob
```

Disable:
```zsh
setopt noextendedglob
```

Check if enabled:
```zsh
setopt | grep extendedglob
```


--------------------------------------

Useful patterns:


| Pattern           | Remark                                         |
| ----------------- | ---------------------------------------------- |
| `^*.mp4`          | negate (anything but `*.mp4`)                  |
| `(foo|bar).mp4`   | `foo.mp4` or `bar.mp4`                         |
| `clip_<5-15>.mp4` | `clip_5.mp4`, `clip_6.mp4`, ..., `clip_15.mp4` |


-------------------------------------

See also:
* [Patterns and pattern matching](https://wiki.bash-hackers.org/syntax/pattern)
