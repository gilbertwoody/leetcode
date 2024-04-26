int minFallingPathSum(int** grid, int gridSize, int* gridColSize) {
    if (gridSize == 1) {
        return grid[0][0];
    }

    int i = gridSize - 2;
    do {
        int min, sec, mini;

        min = sec = INT_MAX;
        mini = -1;

        for (int j = 0; j < gridSize; j++) {
            int t = grid[i+1][j];

            if (t < sec) {
                if (t < min) {
                    sec = min;
                    min = t;
                    mini = j;
                } else {
                    sec = t;
                }
            }
        }

        for (int j = 0; j < gridSize; j++) {
            grid[i][j] += j == mini ? sec : min;
        }

    } while (i-- > 0);

    int min = grid[0][0];
    for (i = 1; i < gridSize; i++) {
        if (grid[0][i] < min) {
            min = grid[0][i];
        }
    }

    return min;
}
