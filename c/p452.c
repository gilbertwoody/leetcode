int findMinArrowShots(int** points, int pointsSize, int* pointsColSize) {
    int cmp(const void *p1, const void *p2) {
        int a, b;
        a = (* (int **) p1)[0];
        b = (* (int **) p2)[0];

        return a < b ? -1 : 1;
    }

    qsort(points, pointsSize, 2 * sizeof(int), cmp);

    int result = 1;
    int common[] = { points[0][0], points[0][1] };

    for (int i = 1; i < pointsSize; i++) {
        int x1, x2, x3, x4;

        x1 = common[0];
        x2 = common[1];
        x3 = points[i][0];
        x4 = points[i][1];

        common[0] = x3;

        if (x2 >= x3) {
            common[1] = x2 < x4 ? x2 : x4;
        } else {
            result += 1;
            common[1] = x4;
        }
    }

    return result;
}

