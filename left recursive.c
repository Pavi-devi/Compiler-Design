#include <stdio.h>
#include <string.h>

int main() {
    int n;
    char prod[10][20], nt, alpha, beta;

    printf("Enter number of productions: ");
    scanf("%d", &n);

    printf("Enter productions (like E->E-A|B):\n");
    for(int i=0; i<n; i++)
        scanf("%s", prod[i]);

    for(int i=0; i<n; i++) {
        printf("\nGRAMMAR: %s", prod[i]);
        nt = prod[i][0];  // non-terminal
        if(nt == prod[i][3]) {   // check left recursion
            alpha = prod[i][4];  // recursive part
            int j=3;
            while(prod[i][j] && prod[i][j] != '|') j++;
            if(prod[i][j]) {
                beta = prod[i][j+1];  // non-recursive part
                printf(" is left recursive.\nGrammar without left recursion:\n");
                printf("%c->%c%c'\n", nt, beta, nt);
                printf("%c'->%c%c'|E\n", nt, alpha, nt);
            }
        } else {
            printf(" is not left recursive.\n");
        }
    }
    return 0;
}
