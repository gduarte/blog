#include <stdio.h>
#include <string.h>

char *read()
{
    char data[64];
    fgets(data, 64, stdin);
    return data;
}

int main(int argc, char *argv[])
{
    char *song, *band;

    puts("Enter song, then band:");
    song = read();
    band = read();

    printf("\n%sby %s", song, band);

    return 0;
}
