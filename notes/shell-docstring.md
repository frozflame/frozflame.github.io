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