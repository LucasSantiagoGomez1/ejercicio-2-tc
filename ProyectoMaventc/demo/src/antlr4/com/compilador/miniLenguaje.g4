grammar miniLenguaje;

// 🖥️ Reglas del parser
program : token* EOF ;
token   : ID | INTEGER | KEYWORD | OPERATOR | SEPARATOR ;

// 🏷️ Reglas léxicas

// Identificadores
ID          : [a-zA-Z][a-zA-Z0-9_]* ;

// 🔢 Literales
INTEGER     : [0-9]+ ;
BOOLEAN     : 'true' | 'false' ;

// 🏷️ Palabras clave
KEYWORD     : 'var' | 'if' | 'else' | 'print' | 'while' | 'function' | 'return' ;

// ➕ Operadores
OPERATOR    : '+' | '-' | '*' | '/' | '%' | '=' | '==' | '!=' | '<' | '>' | '<=' | '>=' | '&&' | '||' | '!' ;

// 📌 Separadores
SEPARATOR   : ';' | '(' | ')' | '{' | '}' | ',' | '.' ;

// 🚫 Ignorar espacios en blanco y comentarios
WS          : [ \t\r\n]+ -> skip ;
COMMENT     : '//' ~[\r\n]* -> skip ;
BLOCK_COMMENT : '/*' .*? '*/' -> skip ;