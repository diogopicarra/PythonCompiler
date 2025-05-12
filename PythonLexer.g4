lexer grammar PythonLexer;

// Tokens para símbolos (Operadores, palavras-chave, etc.)
AND     : 'and';
OR      : 'or';
NOT     : 'not';
IS      : 'is';
IN      : 'in';
IF      : 'if';
ELIF    : 'elif';
ELSE    : 'else';
FOR     : 'for';
WHILE   : 'while';
DEF     : 'def';
CLASS   : 'class';
TRY     : 'try';
EXCEPT  : 'except';
FINALLY : 'finally';
WITH    : 'with';
RETURN  : 'return';
PASS    : 'pass';
YIELD   : 'yield';
BREAK   : 'break';
CONTINUE: 'continue';
IMPORT  : 'import';
FROM    : 'from';
AS      : 'as';
GLOBAL  : 'global';
NONLOCAL: 'nonlocal';
LAMBDA  : 'lambda';
ASSERT  : 'assert';
DEL     : 'del';
RAISE   : 'raise';
TRUE    : 'True';
FALSE   : 'False';
NONE    : 'None';
NUMBER  : [0-9]+ ('.' [0-9]+)?; // Números inteiros e de ponto flutuante
STRING  : '"' ( ~["\\] | '\\' . )* '"'
        | '\'' ( ~['\\] | '\\' . )* '\'';

// Operadores aritméticos
PLUS    : '+';
MINUS   : '-';
STAR    : '*';
SLASH   : '/';
FSLASH  : '//';
PERCENT : '%';
POWER   : '**';

// Operadores relacionais
EQUALS  : '==';
NOTEQUAL: '!=';
GT      : '>';
LT      : '<';
GTE     : '>=';
LTE     : '<=';

// Operadores de atribuição
ASSIGN  : '=';
PLUSEQ  : '+=';
MINUSEQ : '-=';
STAREQ  : '*=';
SLASHEQ : '/=';
FSLEQ   : '//=';
PERCENTEQ: '%=';
POWEREQ : '**=';

// Delimitadores e símbolos de bloco
LPAREN  : '(';
RPAREN  : ')';
LBRACE  : '{';
RBRACE  : '}';
LBRACK  : '[';
RBRACK  : ']';
COMMA   : ',';
COLON   : ':';
DOT     : '.';
SEMICOLON: ';';
NEWLINE : '\r'? '\n' {skip();};

// Tokens para identificadores, letras, dígitos e espaços em branco (no final do arquivo)

// Identificadores e letras
ID      : [a-zA-Z_][a-zA-Z0-9_]*;

// Dígitos
DIGIT   : [0-9];

// Espaços em branco
WS      : [ \t\r\n]+ -> skip;
