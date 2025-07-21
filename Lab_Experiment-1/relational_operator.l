%{
#include <stdio.h>
%}
%%
"<="    { printf("Relational Operator: <=\n"); }
">="    { printf("Relational Operator: >=\n"); }
"=="    { printf("Relational Operator: ==\n"); }
"!="    { printf("Relational Operator: !=\n"); }
"<"     { printf("Relational Operator: <\n"); }
">"     { printf("Relational Operator: >\n"); }
.|\n    { /* ignore other characters */ }
%%
int yywrap() { return 1; }
int main() {
    printf("Enter operators (Ctrl+D to end):\n");
    yylex();
    return 0;
}
