%{
#include <stdio.h>
%}
%%
[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}    { printf("Valid Email: %s\n", yytext); }
.|\n           { /* ignore everything else */ }
%%
int yywrap() { return 1; }
int main() {
    printf("Enter text with emails (Ctrl+D to end):\n");
    yylex();
    return 0;
}
//Program to identify email-like patterns