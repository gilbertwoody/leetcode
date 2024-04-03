bool exist(char** board, int boardSize, int* boardColSize, char* word) {
    int m = boardSize, n = *boardColSize;
    bool **visiting = (bool **) malloc(m * sizeof(bool *));

    int i, j;
    for (i = 0; i < m; i++) {
        visiting[i] = (int *) malloc(n * sizeof(bool));
    }


    for (int i = 0; i < m; i++) {
        for (int j = 0; j < n; j++) {
            visiting[i][j] = false;
        }
    }

    bool check(int i, int j, int k) {
        if (board[i][j] != word[k]) return false;

        if (!word[k+1]) return true;

        visiting[i][j] = true;

        int nbs[4][2] = { {i-1, j}, {i+1, j}, {i, j-1}, {i, j+1}};

        for (int row = 0; row < 4; row++) {
            int x = nbs[row][0], y = nbs[row][1];

            if (x >= 0 && x < m &&
                y >= 0 && y < n &&
                !visiting[x][y] &&
                check(x, y, k+1))
                return true;
        }

        visiting[i][j] = false;

        return false;
    }

    for (i = 0; i < m; i++) {
        for (j = 0; j < n; j++) {
            if (check(i, j, 0)) return true;
        }
    }

    return false;
}
