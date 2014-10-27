typedef struct mazeNode {
	int hasCheese;
	int tag;
	struct mazeNode *left;	
	struct mazeNode *right;	
} maze_t;

maze_t maze = {
	.tag = 0,
	.left = &(maze_t) {
        .tag = 1,
		.left = &(maze_t) {
            .tag = 2,
			.left = &(maze_t) { .tag = 3 },
			.right = &(maze_t) { .tag = 4 }
		},
		.right = &(maze_t) {
            .tag = 5,
			.right = &(maze_t) { .tag = 6 }
		}
	},
	.right = &(maze_t) {
		.tag = 7,
		.left = &(maze_t) { .tag = 8 },
		.right = &(maze_t) {
			.tag = 9,
			.left = &(maze_t) {
				.tag = 10,
				.left = &(maze_t) {
					.hasCheese = 1,
					.tag = 11
				}
			},
			.right = &(maze_t) {}
		}
	}
};
