```
ls -l 
total 12
-rwsr-sr-x 1 flag09 level09 7640 Mar  5  2016 level09
----r--r-- 1 flag09 level09   26 Mar  5  2016 token
```

```
cat token
f4kmm6p|=�p�n��DB�Du{��
```

```
ltrace ./level09
__libc_start_main(0x80487ce, 1, 0xbffff7f4, 0x8048aa0, 0x8048b10 <unfinished ...>
ptrace(0, 0, 1, 0, 0xb7e2fe38)                                                                                                    = -1
puts("You should not reverse this"You should not reverse this
)                                                                                               = 28
+++ exited (status 1) +++
```

```
level09@SnowCrash:~$ ./level09 a
a
level09@SnowCrash:~$ ./level09 abcde
acegi
level09@SnowCrash:~$ ./level09 1
1
level09@SnowCrash:~$ ./level09 12
13
level09@SnowCrash:~$ ./level09 123
135
level09@SnowCrash:~$ ./level09 2
2
level09@SnowCrash:~$ ./level09 5
5
level09@SnowCrash:~$ ./level09 12
13
level09@SnowCrash:~$ ./level09 22222222222222
23456789:;<=>?
```

```
gcc reverse.c  
./a.out        
f3iji1ju5yuevaus41q1afiuq
```