%{
#include <stdio.h>
%}

digit    [0-9]+
id       [a-zA-Z_][a-zA-Z0-9_]*
keyword  (int|float|if|else|return|while)
operator [+\-*/=]

%%

{keyword}  { printf("%s -> KEYWORD\n", yytext);}
{id}       { printf("%s -> IDENTIFIER\n", yytext);}
{digit}    { printf("%s -> NUMBER\n", yytext);}
{operator} { printf("%s -> OPERATOR\n", yytext); }
[ \t\n]     ; /* ignore whitespace */
.          { printf ("%s -> UNKNOWN\n" , yytext); }

%%

int main() {
    yylex();
    return 0;
}

int yywrap(){
    return 1;
}
