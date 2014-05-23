#include <stdio.h>
#include "maze.h"

int explore(maze_t *node)
{
	int found = 0;

    if (node == NULL) {
        return 0;
    }

    if (node->hasCheese) {
        return 1; // found cheese
    }

	found = explore(node->left) || explore(node->right);
	return found;
}

int main(int argc)
{
        int found = explore(&maze);
}
