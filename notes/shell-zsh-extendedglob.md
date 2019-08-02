
Zsh setopt extendedglob
=======================


```zsh
setopt extendedglob
```

| Pattern           | Remark                                         |
| ----------------- | ---------------------------------------------- |
| `^*.mp4`          | negate (anything but `*.mp4`)                  |
| `(foo\|bar).mp4`  | `foo.mp4` or `bar.mp4`                         |
| `clip_<5-15>.mp4` | `clip_5.mp4`, `clip_6.mp4`, ..., `clip_15.mp4` |
