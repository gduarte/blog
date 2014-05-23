#include <stdio.h>
#include <sys/types.h>
#include <unistd.h>

int tailPidFactorial(int n, int acc)
{
        if (1 == n) {
                return acc * getpid(); // not tail
        }

        acc = (acc * getpid() * n);
        return tailPidFactorial(n-1, acc); // tail
}

int main(int argc)
{
        int answer = tailPidFactorial(5, 1);
        printf("%d\n", answer);
}
