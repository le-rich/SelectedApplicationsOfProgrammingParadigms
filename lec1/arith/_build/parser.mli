
(* The type of tokens. *)

type token = 
  | TIMES
  | RPAR
  | PLUS
  | MINUS
  | LPAR
  | INT of (int)
  | EOF

(* This exception is raised by the monolithic API functions. *)

exception Error

(* The monolithic API. *)

val prog: (Lexing.lexbuf -> token) -> Lexing.lexbuf -> (Ast.expr option)
