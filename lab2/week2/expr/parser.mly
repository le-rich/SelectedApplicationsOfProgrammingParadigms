(* declarations *)
%token <int> INT          (* terminal symbols *)
%token <string> ID
%token PLUS MINUS TIMES EQ
%token LPAR RPAR
%token LET IN END
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
  | v = ID                        { Var v }
  | MINUS; n = INT                { Int (- n) }
  | LPAR; e = expr; RPAR          { e }
  | e1 = expr; TIMES; e2 = expr   { Prim("*", e1, e2) }
  | e1 = expr; PLUS; e2 = expr    { Prim("+", e1, e2) }
  | e1 = expr; MINUS; e2 = expr   { Prim("-", e1, e2) }
  | LET; x = ID; EQ; e1 = expr; IN; e2 = expr; END  { Let (x, e1, e2) }
  ;

