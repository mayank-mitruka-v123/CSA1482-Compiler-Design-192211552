%{
#include <stdio.h>
%}

%%
^https?://[a-zA-Z0-9\-\.]+\.[a-zA-Z]{2,}(/\S*)?$ {
    printf("Valid URL: %s\n", yytext);
}

.|\n ;

%%

int main() {
    yylex();
    return 0;
}