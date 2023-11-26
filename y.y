%{
    #include <stdio.h>
    void yyerror(char *msg);
    int yylex(void);
%}

%token IDENTIFICADOR
%token ASIGNACION
%token NUMERO
%token COMPARACION
%token PUNTOCOMA
%token PARABRE
%token PARCIERRA
%token LLAVEABRE
%token LLAVECIERRA
%token INCREMENTO
%token DECREMENTO
%token FOR
%start INICIO

%%
INICIO: FOR PARABRE INTERIOR PARCIERRA LLAVEABRE LLAVECIERRA
{printf("Sintaxis Correcta\n");};
INTERIOR: PRIMERO  PUNTOCOMA SEGUNDO PUNTOCOMA TERCERO;
PRIMERO: IDENTIFICADOR ASIGNACION NUMERO;
SEGUNDO: IDENTIFICADOR COMPARACION NUMERO;
TERCERO: IDENTIFICADOR OPERACION;
OPERACION: DECREMENTO|INCREMENTO;
%%

void yyerror(char *msg){printf("\t Error Sintactico");
}

void main(){
    yyparse();
}
