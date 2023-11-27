
/* A Bison parser, made by GNU Bison 2.4.1.  */

/* Skeleton interface for Bison's Yacc-like parsers in C
   
      Copyright (C) 1984, 1989, 1990, 2000, 2001, 2002, 2003, 2004, 2005, 2006
   Free Software Foundation, Inc.
   
   This program is free software: you can redistribute it and/or modify
   it under the terms of the GNU General Public License as published by
   the Free Software Foundation, either version 3 of the License, or
   (at your option) any later version.
   
   This program is distributed in the hope that it will be useful,
   but WITHOUT ANY WARRANTY; without even the implied warranty of
   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
   GNU General Public License for more details.
   
   You should have received a copy of the GNU General Public License
   along with this program.  If not, see <http://www.gnu.org/licenses/>.  */

/* As a special exception, you may create a larger work that contains
   part or all of the Bison parser skeleton and distribute that work
   under terms of your choice, so long as that work isn't itself a
   parser generator using the skeleton or a modified version thereof
   as a parser skeleton.  Alternatively, if you modify or redistribute
   the parser skeleton itself, you may (at your option) remove this
   special exception, which will cause the skeleton and the resulting
   Bison output files to be licensed under the GNU General Public
   License without this special exception.
   
   This special exception was added by the Free Software Foundation in
   version 2.2 of Bison.  */


/* Tokens.  */
#ifndef YYTOKENTYPE
# define YYTOKENTYPE
   /* Put the tokens into the symbol table, so that GDB and other debuggers
      know about them.  */
   enum yytokentype {
     FOR = 258,
     WHILE = 259,
     DO = 260,
     SWITCH = 261,
     CASE = 262,
     BREAK = 263,
     DEFAULT = 264,
     RETURN = 265,
     AND = 266,
     OR = 267,
     IDENTIFICADOR = 268,
     NUMERO = 269,
     COMPARACION = 270,
     PARABRE = 271,
     PARCIERRA = 272,
     LLAVEABRE = 273,
     LLAVECIERRA = 274,
     PUNTOCOMA = 275,
     INCREMENTO = 276,
     DECREMENTO = 277,
     IF = 278,
     ASIGNACION = 279,
     ELSE = 280,
     UMINUS = 281
   };
#endif
/* Tokens.  */
#define FOR 258
#define WHILE 259
#define DO 260
#define SWITCH 261
#define CASE 262
#define BREAK 263
#define DEFAULT 264
#define RETURN 265
#define AND 266
#define OR 267
#define IDENTIFICADOR 268
#define NUMERO 269
#define COMPARACION 270
#define PARABRE 271
#define PARCIERRA 272
#define LLAVEABRE 273
#define LLAVECIERRA 274
#define PUNTOCOMA 275
#define INCREMENTO 276
#define DECREMENTO 277
#define IF 278
#define ASIGNACION 279
#define ELSE 280
#define UMINUS 281




#if ! defined YYSTYPE && ! defined YYSTYPE_IS_DECLARED
typedef union YYSTYPE
{

/* Line 1676 of yacc.c  */
#line 14 "y.y"

    int num;
    char* id;



/* Line 1676 of yacc.c  */
#line 111 "y.tab.h"
} YYSTYPE;
# define YYSTYPE_IS_TRIVIAL 1
# define yystype YYSTYPE /* obsolescent; will be withdrawn */
# define YYSTYPE_IS_DECLARED 1
#endif

extern YYSTYPE yylval;


