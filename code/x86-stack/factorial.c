#include <stdio.h>

int factorial(int n)
{
	int previous = 0xdeadbeef;	

	if (n == 0 || n == 1) {
		return 1;
	}

	previous = factorial(n-1);
	return n * previous;
}

int main(int argc)
{
	int answer = factorial(5);
	printf("%d\n", answer);
}
