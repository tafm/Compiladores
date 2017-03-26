%%

%class analiselexica
%unicode
%line
%column
%standalone

%%

. { throw new RuntimeException("Caractere ilegal! '" + yytext() + "' na linha: " + yyline + ", coluna: " + yycolumn); }
