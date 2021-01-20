type expr =
  | Int of int
  | Prim of string * expr * expr    (* Prim ("+", (Int 1) (Int 2)) *)
