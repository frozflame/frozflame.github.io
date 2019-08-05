Docstring in A Shell Script 
===========================

Example:

```bash
read -r -d '' usage <<EOT
usage:
\$ $0 start
\$ $0 reload
EOT

if [[ $1 == -h ]]; then
    echo -e "$usage" >&2
    exit
fi
```

See also: [SO question](https://stackoverflow.com/questions/23929235/multi-line-string-with-extra-space-preserved-indentation) 