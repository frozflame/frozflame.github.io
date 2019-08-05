Bash Default Value
==================

Imagining we have a Python function named `lookup` for shell variable expansion.

```python
def lookup(env, k, default):
    return env.get(k, default)

# ${username-guest}
lookup(env, 'username', 'guest')
```

| Symbol | Python Equivolent                                                                    |
| ------ | ------------------------------------------------------------------------------------ |
| :+     | `return env.get(k) and default`{:.language-python}                                                          |
| :-     | `return env.get(k) or default`                                                       |
| :=     | `v = env.get(k) and default; env[key] = val; return v;`                              |
| +      | `v = env.get(k, default); v = v if v is None else default; return v`                 |
| -      | `v = env.get(k, default); v = v if v is not None else default; return v`             |
| =      | `v = env.get(k, default); v = v if v is not None else default; env[k] = v; return v` |

---------------------------------------------

References:
- Parameter Substitution, _Advanced Bash-Scripting Guide_, [:globe_with_meridians:](http://tldp.org/LDP/abs/html/parameter-substitution.html#PARAMSUBREF)