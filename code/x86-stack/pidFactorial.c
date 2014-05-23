#include <stdio.h>
#include <sys/types.h>
#include <unistd.h>

int pidFactorial(int n)
{
        if (1 == n) {
                return getpid(); // tail
        }

        return n * pidFactorial(n-1) * getpid(); // not tail
}

int main(int argc)
{
        int answer = pidFactorial(5);
        printf("%d\n", answer);
}
