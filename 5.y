%{
#include <stdio.h>

#define TOTAL_VAR 26

int v[TOTAL_VAR];
%}

%token NUMBER MINUS ID ASSIGN NEWLINE

%%

p : p NEWLINE s
p : s
s : 
s : ID ASSIGN e           { v[$1] = $3;    }
e : e MINUS NUMBER        { $$ = $1 - $3;  }
e : NUMBER                { $$ = $1;       }

%%

main() {
    int i;
    for (i = 0; i < TOTAL_VAR; i++) v[i] = 0;
    yyparse();
    for (i = 0; i < TOTAL_VAR; i++) printf("%d ", v[i]);
}
