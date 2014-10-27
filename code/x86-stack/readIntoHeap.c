#include <stdio.h>
#include <string.h>
#include <stdlib.h>

char *read()
{
    char *data = malloc(64);
    if (data == 0) {
        puts("failed to allocate heap memory");
        exit(1);
    }

    fgets(data, 64, stdin);
    return data;
}

int main (int argc, char *argv[])
{
    char *song, *band;

    puts("Enter song, then band:");
    song = read();
    band = read();

    printf("\n%sby %s", song, band);

    return 0;
}
