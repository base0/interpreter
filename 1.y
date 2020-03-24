%{
#include <stdio.h>
%}

%token NUMBER MINUS

%%

e : NUMBER MINUS NUMBER   { printf("N-N \n"); }
e : NUMBER                { printf("N   \n");   }

%%

main() {
    yyparse();
}