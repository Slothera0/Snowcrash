#include <unistd.h>
#include <fcntl.h>
#include <stdio.h>

int main()
{
    int fd = open("token", O_RDONLY);
    int i = 0;
    char s[50] = "\0";

    read(fd, s, 49);
    while (s[i + 1] != '\0')
    {
        s[i] = s[i] - i;
        i++;
    }

    write(1, s, i + 1);
}   