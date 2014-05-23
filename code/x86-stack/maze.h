typedef struct mazeNode {
	int hasCheese;
	int tag;
	struct mazeNode *left;	
	struct mazeNode *right;	
} maze_t;

maze_t maze = {
	.tag = 1,
	.left = &(maze_t) {
		.left = &(maze_t) {
			.left = &(maze_t) {},
			.right = &(maze_t) {}
		},
		.right = &(maze_t) {
			.right = &(maze_t) {}
		}
	},
	.right = &(maze_t) {
		.tag = 8,
		.left = &(maze_t) {},
		.right = &(maze_t) {
			.tag = 10,
			.left = &(maze_t) {
				.tag = 11,
				.left = &(maze_t) {
					.hasCheese = 1,
					.tag = 12
				}
			},
			.right = &(maze_t) {}
		}
	}
};
