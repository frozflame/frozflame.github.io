Bash case construct examples
===========================

Filename with leading "-":

```bash
case "$filename" in
    -*) filename=./"$filename";;  
esac
```

Simple argument parsing:

```bash
while [ $# -gt 0 ]; do
    case "$1" in
    -d|--debug)
        DEBUG=1
        ;;
    -c|--cfg)
         CFG_FILE="$2"
         shift
    esac
    shift
done
```

