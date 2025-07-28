%{
#include <stdio.h>
%}
%%
0[xX][0-9a-fA-F]+    { printf("Hexadecimal Number: %s\n", yytext); }
.|\n                 { /* ignore */ }
%%
int yywrap() { return 1; }
int main() {
    printf("Enter input (Ctrl+D to end):\n");
    yylex();
    return 0;
}
// Program to detect hexadecimal numbers