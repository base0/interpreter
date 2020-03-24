%{
#include <stdio.h>
%}

%token NUMBER MINUS

%%

e : NUMBER MINUS NUMBER   { printf("%d \n", $1 - $3); }
e : NUMBER                { printf("%d \n", $1);    }

%%

main() {
    yyparse();
}