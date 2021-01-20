%{ 
	(* header: code copied into generated ml file *)
%}

(* declarations *)
%token <int> INT 
%token <string> SELECT
%token <string> FROM
%token <string> NAME
%token STAR 
%token COMMA
%token DOT
%token PLUS MINUS TIMES DIVIDE
%token LPAR RPAR
%token EOF 
%token TRUE FALSE AND OR NOT 

%left MINUS PLUS
%left TIMES DIVIDE

%start <Ast.expr option> prog

%%
(* grammar rules *)

prog:
	| e = expr; EOF { Some e }
	| EOF						{ None }
	;


column:
	| n = NAME;											{ Column (n) }
	| t = NAME; DOT; c = NAME				{ TableColumn (t, c) }
	;
	
expr:
	| STAR;													{ Star }
	| c = column;										{ ColumnExpr (c) }
	| n = INT												{ Int n }
	| MINUS; n = INT								{ Int (- n) }
	| LPAR; e = expr; RPAR					{ e } 
	|	n = NAME; LPAR; e = separated_list(COMMA, expr); RPAR			{ Prim (n, e) }
	;
