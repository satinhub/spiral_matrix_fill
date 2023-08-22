#include <stdio.h>
#include <stdlib.h>

int main() {
    int m, n;
    scanf("%d %d", &m, &n);
    int **matr = malloc(m * sizeof(int *));
    int *val = malloc(m * n * sizeof(int));

    for (int i = 0; i < m; i++) matr[i] = val + i * n;

    for (int i = 0; i < m; i++)
        for (int j = 0; j < n; j++) scanf("%d", &matr[i][j]);

    free(val);
    free(matr);

    return 0;
}