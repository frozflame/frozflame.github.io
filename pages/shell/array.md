Bash Array
==========

Boilerplate:

```shell
declare -a pdf_files

pdf_files+=("BashTutorial.pdf")
pdf_files+=("PythonTutorial.pdf")

for filename in "${pdf_files[@]}"; do
    pdftotext "${filename}"
done
```

Notes:
* Double quoting an expansion suppresses word splitting, except in the special cases of `$@` and `${array[@]}`
* In `bash`, array index starts from 0, but in `zsh`, array index starts from 1
