%{ 
	(* header: code copied into generated ml file *)
%}

(* declarations *)
%token <int> INT 
%token SELECT
%token FROM
%token <string> ID
%token STAR 
%token COMMA
%token DOT
%token PLUS MINUS TIMES DIVIDE
%token LPAR RPAR
%token EOF 
%token TRUE FALSE AND OR NOT 

%left MINUS PLUS
%left TIMES DIVIDE
%left SELECT ID

%start <Ast.stmt option> prog

%%
(* grammar rules *)

stmt:
	| SELECT; e = exprs ; FROM; ids = names											{ Ast.Select (e, ids) } 
	; 

prog:
	| e = stmt; EOF																							{ Some e }
	| EOF																												{ None }
	;

exprs:
	|	e = expr;																									{ [e] }
	| e = expr; COMMA; es = exprs																{ e::es }
	;

names:
	| n = ID;																										{ [n] }
	|	n = ID; COMMA; ns = names																	{ n::ns }
	;

column:
	| n = ID																										{ Column (n) }
	| t = ID; DOT; c = ID																				{ TableColumn (t, c) }
	;

expr:
	| STAR;																											{ Star }
	| c = column;																								{ ColumnExpr (c) }
	| n = ID; LPAR; e = exprs; RPAR															{ Prim (n, e) }
	| n = INT																										{ Int n }
	| MINUS; n = INT																						{ Int (- n) }
	| LPAR; e = expr; RPAR																			{ e } 
	| e1 = expr; TIMES; e2 = expr 															{ Prim("*", [e1;e2]) }
  | e1 = expr; PLUS; e2 = expr 																{ Prim("+", [e1; e2]) }
  | e1 = expr; MINUS; e2 = expr 															{ Prim("-", [e1; e2]) }
	| e1 = expr; DIVIDE; e2 = expr															{ Prim("/", [e1; e2]) }
	;
