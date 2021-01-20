(* Note: header & trailer sections are optional *)
%{
  (* header: code copied into generated ml file *)
%}

(* declarations *)
%token <int> INT          (* terminal symbols *)
%token PLUS MINUS TIMES
%token LPAR RPAR
%token EOF

%left MINUS PLUS          (* lowest precedence *)
%left TIMES               (* highest precedence *)

%start <Ast.expr option> prog

%%
(* grammar rules *)

prog:
  | e = expr; EOF  { Some e }
  | EOF            { None }
  ;

expr:
  | n = INT                       { Int n }
  | MINUS; n = INT                { Int (- n) }
  | LPAR; e = expr; RPAR          { e }
  | e1 = expr; TIMES; e2 = expr   { Prim("*", e1, e2) }
  | e1 = expr; PLUS; e2 = expr    { Prim("+", e1, e2) }
  | e1 = expr; MINUS; e2 = expr   { Prim("-", e1, e2) }
  ;

%%

(* trailer: code copied into generated ml file *)
