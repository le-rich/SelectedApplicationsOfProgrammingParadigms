type expr =
  | Int of int                      (* Int 1 *)
  | Var of string                   (* Var "x" *)    
  | Prim of string * expr * expr    (* Prim ("+", (Int 1) (Int 2)) *)
  | Let of string * expr * expr     (* Let ("x", Int 1, Prim ("+", (Var "x") (Int 1)) *)
