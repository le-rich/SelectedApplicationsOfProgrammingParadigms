open Lexing
open Ast
open Lexer

let print_position outx lexbuf = 
	let pos = lexbuf.lex_curr_p in
	Printf.fprintf outx "%s:%d:%d" pos.pos_fname
		pos.pos_lnum (pos.pos_cnum - pos.pos_bol + 1)
	
let parse_with_error lexbuf =
	try Parser.prog Lexer.read lexbuf with
		| SyntaxError msg ->
			Printf.fprintf stderr "%a: %s\n" print_position lexbuf msg;
			None
		| Parsing.Parse_error ->	
			Printf.fprintf stderr "%a: syntax error \n" print_position lexbuf;
			exit (-1)

let from_string str = 
	let lexbuf = Lexing.from_string(str)
	in
	parse_with_error lexbuf

let rec lookup x env = 
	match env with 
	| [] -> failwith ("no binding for" ^ x)
	| (y, v)::_ when String.equal x y -> v
	| _::t -> lookup x t

(* type env = (string * value) list

and value = Closure of string * value * env *)

let add x v env = (x, v)::env

let emptyenv = []

let get_int = function
	| Int i -> i
	| _ -> failwith "expected an integer"

let rec eval e env = 
	match e with
	| Var x									-> lookup x env
	| Int i									-> e
	| Bool b								-> e
	| Let (x, e1, e2)				-> let v = eval e1 env in
														 let env' = add x v env in
														 eval e2 env'
	| If (e, e1, e2)				-> let v = eval e env in
														 if v <> Bool(false) then eval e1 env
														 else eval e2 env
  | Prim("+", e1, e2)   -> Int (((eval e1 env) |> get_int) + ((eval e2 env) |> get_int))
  | Prim("-", e1, e2)   -> Int (((eval e1 env) |> get_int) - ((eval e2 env) |> get_int))
  | Prim("*", e1, e2)   -> Int (((eval e1 env) |> get_int) * ((eval e2 env) |> get_int))
	| Prim("/", e1, e2)		-> Int (((eval e1 env) |> get_int) / ((eval e2 env) |> get_int))
  | Prim("<", e1, e2)   -> if ((eval e1 env) |> get_int) < ((eval e2 env) |> get_int) then Bool(true) else Bool(false)
	| Prim("<=", e1, e2)	-> if ((eval e1 env) |> get_int) <= ((eval e2 env) |> get_int) then Bool(true) else Bool(false)
	| Prim(">", e1, e2)		-> if ((eval e1 env) |> get_int) > ((eval e2 env) |> get_int) then Bool(true) else Bool(false)
	| Prim(">=", e1, e2)	-> if ((eval e1 env) |> get_int)  >= ((eval e2 env) |> get_int) then Bool(true) else Bool(false)
	| Prim("==", e1, e2)  -> if ((eval e1 env) |> get_int) = ((eval e2 env) |> get_int) then Bool(true) else Bool(false)
	| Prim("!=", e1, e2)  -> if ((eval e1 env) |> get_int) != ((eval e2 env) |> get_int) then Bool(true) else Bool(false)
	| Fun (x, e) -> Closure(x, e, env) 
	| Call (e1, e2)				->
		match eval e1 env with
			| Closure (x, ein, env') ->
				let env'' = add x e2 env in
				let xval = eval ein env'' in
				let env''' = (x, xval)::env'' in
				eval xval env''' 
			| _ -> failwith "fail" 
  | Prim _              -> failwith "unknown primitive"

let eval_string s = 
	match from_string s with
		| None -> None
		| Some t -> Some (eval t emptyenv)
