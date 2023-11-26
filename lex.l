%{
    #include "y.tab.h"
    #include <stdio.h>
    FILE *output_file;
%}


numero [0-9]
letra [A-Za-z]
comparacion <|>|<=|>=



%%
"for"           {fprintf(output_file, "for (0, 0)\n");return FOR;}
{letra}+(_|{letra}|{numero})* {return IDENTIFICADOR;}
"="             {fprintf(output_file, "= (1, 0)\n");return ASIGNACION;}
{numero}*       {fprintf(output_file, "{numero} (3, IF)\n");return NUMERO;}
{comparacion}    {return COMPARACION;}
"++"            {return INCREMENTO;}
"--"                {return DECREMENTO;}
"("             {return PARABRE;}
")"             {return PARCIERRA;}
"{"              {return LLAVEABRE;}
"}"             {return LLAVECIERRA;}
";"             {return PUNTOCOMA;}
.               {printf("Error lexico Caracter no valido '%s' \n");}

%%

int yywrap() {
    return 1;
}
