type expr =
  | Int of int                        (* Integer Constant*)
	| Var of string											(* Var "x" - Variable Declaration *)
  | Prim of string * expr * expr      (* Prim ("+", (Int 1) (Int 2)) *)
	| Let of string * expr * expr				(* Let ("x", Int 1, Prim ("+", (Var "x") (Int 1)) *)
	| If of expr * expr * expr          (* If (Prim("==", (Int 1) (Int 2)), e1, e2 *)
	| Bool of string
