# Ejercicios Fundamentos Linux

## Ejercicios CLI

### Ejercicio 1

```sh
$ mkdir -p foo/{dummy,empty}
$ touch foo/dummy/file{1,2}.txt
$ echo 'me encanta la bash!!' > foo/dummy/file1.txt
```

### Ejercicio 2

```sh
$ cat foo/dummy/file1.txt > foo/dummy/file2.txt
$ mv foo/dummy/file2.txt foo/empty
```

### Ejercicio 3

Archivo [ejercicio3.sh](ejercicio3.sh)

### Ejercicio 4

Archivo [ejercicio4.sh](ejercicio4.sh)

Ejemplos de ejecución:

```sh
# Sin resultados
./ejercicio4.sh nada

# Con resultados
./ejercicio4.sh domain
```

### Ejercicio 5

Archivo [ejercicio5.sh](ejercicio5.sh)

Ejemplos de ejecución:

```sh
# Validación de parámetros
./ejercicio5.sh

# Sin resultados
./ejercicio5.sh https://example.org nada

# Un resultado
./ejercicio5.sh https://example.org information

# Varios resultados
./ejercicio5.sh https://example.org domain
```

