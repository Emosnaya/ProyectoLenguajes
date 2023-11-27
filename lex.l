%{
    #include "y.tab.h"
    #include "output.h"
    #include <stdio.h>
    FILE *salida;
%}

numero [0-9]
letra [A-Za-z]
comparacion <|>|<=|>=

%%

"for"           {fprintf(salida, "for (0, 0)\n"); return FOR;}
"if"            {fprintf(salida, "if (0, 1)\n"); return IF;}
"else"          {fprintf(salida, "else (0, 2)\n"); return ELSE;}
"while"         {fprintf(salida, "while (0, 3)\n"); return WHILE;}
"do"            {fprintf(salida, "do (0, 4)\n"); return DO;}
"switch"        {fprintf(salida, "switch (0, 5)\n"); return SWITCH;}
"case"          {fprintf(salida, "case (0, 6)\n"); return CASE;}
"break"         {fprintf(salida, "break (0, 7)\n"); return BREAK;}
"default"       {fprintf(salida, "default (0, 8)\n"); return DEFAULT;}
"return"        {fprintf(salida, "return (0, 9)\n"); return RETURN;}
"&&"            {fprintf(salida, "&& (1, 10)\n"); return AND;}
"||"            {fprintf(salida, "|| (1, 11)\n"); return OR;}
"++"            {fprintf(salida, "++ (1, 12)\n"); return INCREMENTO;}
"--"            {fprintf(salida, "-- (1, 13)\n"); return DECREMENTO;}
"("             {fprintf(salida, "( (2, 14)\n"); return PARABRE;}
")"             {fprintf(salida, ") (2, 15)\n"); return PARCIERRA;}
"{"             {fprintf(salida, "{ (2, 16)\n"); return LLAVEABRE;}
"}"             {fprintf(salida, "} (2, 17)\n"); return LLAVECIERRA;}
";"             {fprintf(salida, "; (2, 18)\n"); return PUNTOCOMA;}

{numero}+       {fprintf(salida, "%s (3, 19)\n", yytext); return NUMERO;}
{letra}+(_|{letra}|{numero})* {fprintf(salida, "%s (3, 20)\n", yytext); return IDENTIFICADOR;}
{comparacion}   {fprintf(salida, "%s (3, 21)\n", yytext); return COMPARACION;}

.               {fprintf(salida, "Error léxico: Caracter no válido '%s'\n", yytext);}

%%

int yywrap() {
    return 1;
}
