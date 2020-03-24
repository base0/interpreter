%{
#include <stdio.h>
%}

%token NUMBER MINUS

%%

s : e                     { printf("%d \n", $1); }
e : e MINUS NUMBER        { $$ = $1 - $3;        }
e : NUMBER                { $$ = $1;             }

%%

main() {
    yyparse();
}