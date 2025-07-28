%{
#include <stdio.h>
%}
%%
[0-9]+\.[0-9]+    { printf("Float: %s\n", yytext); }
[0-9]+            { printf("Integer: %s\n", yytext); }
[ \t\n]           { /* ignore spaces and newlines */ }
.                 { /* ignore other characters */ }
%%
int yywrap() { return 1; }
int main() {
    printf("Enter numbers (Ctrl+D to end):\n");
    yylex();
    return 0;
}
//Program to recognize and print integers and floating point numbers