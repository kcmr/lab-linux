# Ejercicios Fundamentos Linux

## Ejercicios CLI

### Ejercicio 1

```
$ mkdir -p foo/{dummy,empty}
$ touch foo/dummy/file{1,2}.txt
$ echo 'me encanta la bash!!' > foo/dummy/file1.txt
```

### Ejercicio 2

```
$ cp foo/dummy/file1.txt foo/dummy/file2.txt
$ mv foo/dummy/file2.txt foo/empty
```

### Ejercicio 3

Archivo `ejercicio3.sh`:

```sh
#!/usr/bin/env bash

mkdir -p foo/{dummy,empty}
touch foo/dummy/file{1,2}.txt

default_text="Que me gusta la bash!!!!"
text=$([ $# -gt 0 ] && echo $1 || echo $default_text)

echo $text > foo/dummy/file1.txt

cp foo/dummy/file1.txt foo/dummy/file2.txt
mv foo/dummy/file2.txt foo/empty
```

