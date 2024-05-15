int getMaximumGold(int** grid, int gridSize, int* gridColSize) {
    int m = gridSize, n = *gridColSize;

    int directions[][2] = { {0, 1}, {0, -1}, {1, 0}, {-1, 0} };

    int max_from(int r, int c) {
        if (r < 0 || r == m) {
            return 0;
        }

        if (c < 0 || c == n) {
            return 0;
        }

        if (grid[r][c] == 0) {
            return 0;
        }

        int max = 0, gold = grid[r][c];

        grid[r][c] = 0;
        for (int i = 0; i < 4; i++) {
            int h, v, g;
            h = directions[i][0];
            v = directions[i][1];
            g = max_from(h + r, v + c);

            if (g > max) {
                max = g;
            }
        }
        grid[r][c] = gold;

        return gold + max;
    }

    int max = 0;
    for (int r = 0; r < m; r++) {
        for (int c = 0; c < n; c++) {
            int g = max_from(r, c);

            if (g > max) {
                max = g;
            }
        }
    }

    return max;
}
