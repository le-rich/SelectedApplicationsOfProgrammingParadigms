open Ast

let rec eval e =
  match e with
  | Int i               -> i
  | Prim("+", e1, e2)   -> eval e1 + eval e2
  | Prim("-", e1, e2)   -> eval e1 - eval e2
  | Prim("*", e1, e2)   -> eval e1 * eval e2
  | Prim _              -> failwith "unknown primitive"

let eval_string s =
  match Main.from_string s with
  | None -> None
  | Some t -> Some (eval t)
