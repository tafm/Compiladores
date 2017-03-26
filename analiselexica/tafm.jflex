%%

%class analiselexica
%unicode
%line
%column
%standalone

//Expressões regulares

espacos = [\n\t\r\f]
comentsing = \/\/.*?\n
comentmult = \/\*.*?\*\/

%%

//Palavras reservadas

"boolean"                           {System.out.println("Palavra reservada (boolean)");}
"class"                             {System.out.println("Palavra reservada (class)");}
"public"                            {System.out.println("Palavra reservada (public)");}
"extends"                           {System.out.println("Palavra reservada (extends)");}
"static"                            {System.out.println("Palavra reservada (static)");}
"void"                              {System.out.println("Palavra reservada (void)");}
"main"                              {System.out.println("Palavra reservada (main)");}
"String"                            {System.out.println("Palavra reservada (String)");}
"int"                               {System.out.println("Palavra reservada (int)");}
"while"                             {System.out.println("Palavra reservada (while)");}
"if"                                {System.out.println("Palavra reservada (if)");}
"else"                              {System.out.println("Palavra reservada (else)");}
"return"                            {System.out.println("Palavra reservada (return)");}
"length"                            {System.out.println("Palavra reservada (length)");}
"true"                              {System.out.println("Palavra reservada (true)");}
"false"                             {System.out.println("Palavra reservada (false)");}
"this"                              {System.out.println("Palavra reservada (this)");}
"new"                               {System.out.println("Palavra reservada (new)");}
"System.out.println"                {System.out.println("Palavra reservada (System.out.println)");}

//Operadores

"&&"                                {System.out.println("Operador (&&)");}
"<"                                 {System.out.println("Operador (<)");}
"=="                                {System.out.println("Operador (==)");}
"!="                                {System.out.println("Operador (!=)");}
"+"                                 {System.out.println("Operador (+)");}
"-"                                 {System.out.println("Operador (-)");}
"*"                                 {System.out.println("Operador (*)");}
"!"                                 {System.out.println("Operador (!)");}

//Delimitadores e pontuação

//Identificador

//Literal

//Comentários e espaços

{espacos}                          {}
{comentsing}                       {}
{comentmult}                       {}

. { throw new RuntimeException("Caractere ilegal! '" + yytext() + "' na linha: " + yyline + ", coluna: " + yycolumn); }
