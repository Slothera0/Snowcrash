## Étape 1:

Avec la commande ```cat /etc/passwd``` on voit:
```
...
flag00:x:3000:3000::/home/flag/flag00:/bin/bash
flag01:42hDRfypTqqnw:3001:3001::/home/flag/flag01:/bin/bash
flag02:x:3002:3002::/home/flag/flag02:/bin/bash
...
```

Donc le flag01 à le hash de son mot de passe qui n'est pas protégé et qui est ```42hDRfypTqqnw```

## Étape 2:

Utilisation de John the Ripper, un logiciel de craquage de mot de passe avec:
```john hash.txt```
hash.txt contient le hash decouvert ci-dessus

Résultat:
```abcdefg```

