#include <stdio.h>
#include <string.h>

int main() {
    char gram[20], p1[20], p2[20], common[20], rest[20];
    int i=0, j=0, pos=0;

    printf("Enter Production (like abcd|abxy): A->");
    scanf("%s", gram);

    // Split into two parts
    while(gram[i] != '|') p1[i] = gram[i], i++;
    p1[i] = '\0';  
    strcpy(p2, gram + i + 1);  // copy after '|'

    // Find common prefix
    while(p1[pos] && p1[pos] == p2[pos]) {
        common[j++] = p1[pos];
        pos++;
    }
    common[j] = 'X'; common[j+1] = '\0';  // add new non-terminal

    // Build new production for X
    sprintf(rest, "%s|%s", p1+pos, p2+pos);

    // Print result
    printf("\nA->%s", common);
    printf("\nX->%s\n", rest);

    return 0;
}
