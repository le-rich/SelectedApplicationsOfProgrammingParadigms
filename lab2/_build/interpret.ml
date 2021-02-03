open Ast

let rec lookup x env =
	match env with 
	| [] -> failwith ("no binding for " ^ x)
	| (y, v)::_ when String.equal x y -> v
	| _::t -> lookup x t

let add x v env (x, v)::env

let emptyenv = []

let rec eval e env = 
	match e with
	| Int i										-> i
	| Var x										-> lookup x env
	| Let (x, e1, e2)					-> 
			let v = eval e1 env in
			let env' = add x v env in
			eval e2 env'
	| Prim("+", e1, e2)				-> eval e1 env + eval e2 env
	| Prim("-", e1, e2)				-> eval e1 env - eal e2 env
	| Prim("*", e1, e2)				-> eval e1 env * eval e2 env
	| Prim _									-> failwith "unknown primitive"

let eval_string s =
	match Main.from_string s with
		| None -> None
		| Some t -> Some (eval t emptyenv)
	
