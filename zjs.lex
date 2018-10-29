%{
    #include <stdio.h>
    #include <stdlib.h>
    int line = 0;
%}

%%
END	
;		printf("%s","END_STATMENT");
POINT		printf("%s","POINT");
LINE		printf("%s","LINE");
CIRCLE		printf("%s","CIRCLE");
RECTANGLE	printf("%s","RECTANGLE");
SET_COLOR	printf("%s","SET_COLOR");
INT 		printf("%s","INT");
FLOAT		printf("%s","FLOAT");
\n		line++;
[ ]|\t		;
.{1}		printf("Error on line %d \n", line);
%%

int main(int argc, char** argv){
yylex();
}
