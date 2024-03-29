%{ 
	(* header: code copied into generated ml file *)
%}

(* declarations *)
%token LET IN END IF THEN ELSE FUN ARROW 
%token <string> ID
%token <int> INT 
%token PLUS MINUS DIVIDE TIMES EQ
%token LT GT BANG
%token TRUE FALSE AND OR NOT 
%token LPAR RPAR
%token EOF 

%left MINUS PLUS
%left STAR DIVIDE

%start <Ast.expr option> prog

%%
(* grammar rules *)

prog:
	| e = expr; EOF																							{ Some e }
	| EOF																												{ None }
	;

expr:
	| n = INT																										{ Int n }
	| MINUS; n = INT																						{ Int (- n) }
	| v = ID																										{ Var v }
	| v = ID; EQ; e = expr																			{ Var v }
	| TRUE																											{ Bool (true) }
	| FALSE																											{ Bool (false) }
	| LPAR; e = expr; RPAR																			{ e } 
	| e1 = expr; TIMES; e2 = expr																{ Prim("*", e1, e2) }
  | e1 = expr; PLUS; e2 = expr 																{ Prim("+", e1, e2) }
  | e1 = expr; MINUS; e2 = expr 															{ Prim("-", e1, e2) }
	| e1 = expr; DIVIDE; e2 = expr															{ Prim("/", e1, e2) }
	| e1 = expr; GT; e2 = expr																	{ Prim(">", e1, e2) }
	| e1 = expr; GT; EQ; e2 = expr															{ Prim(">=", e1 ,e2) }
	| e1 = expr; LT; e2 = expr																	{ Prim("<", e1, e2) }
	| e1 = expr; LT; EQ; e2 = expr															{ Prim("<=", e1, e2) } 
	| e1 = expr; EQ; EQ; e2 = expr															{ Prim("==", e1, e2) }
	| e1 = expr; BANG; EQ; e2 = expr														{ Prim("!=", e1, e2) } 
	| e1 = expr; e2 = expr;																			{ Call (e1, e2) }
	| LET; x = ID; EQ; e1 = expr; IN; e2 = expr; END						{ Let (x, e1, e2) } 
	| FUN; x = ID; ARROW; e = expr;															{ Fun (x, e) }
	| IF; e = expr; THEN; e1 = expr; ELSE; e2 = expr; END				{ If (e, e1, e2) }
	;
