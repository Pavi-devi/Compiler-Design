%{
#include <stdio.h>
int space_count = 0;
%}
%%
[ \t]    { space_count++; }
.|\n     { /* ignore other characters */ }
%%
int yywrap() { return 1; }
int main() {
    printf("Enter text (Ctrl+D to end):\n");
    yylex();
    printf("Number of white spaces = %d\n", space_count);
    return 0;
}
//Program to count the number of white spaces.