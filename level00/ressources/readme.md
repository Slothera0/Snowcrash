# Level00

## Étape 1: 

Recherche des binaires appartenant à flag00 avec:
```bash
find / -user flag00 2>/dev/null
```

Résultat: 
```
/usr/sbin/john
/rofs/usr/sbin/john
```

## Étape 2:

On lit les fichiers avec:
```bash
strings /usr/sbin/john
```

Résultat: 
```
cdiiddwpgswtgt
```

## Étape 3: 

Cette chaîne ne fonctionne pas pour le mot de passe, seul résultat cohérent en la décryptant: ```nottoohardhere``` avec un décalage de 15.