
(* The type of tokens. *)

type token = 
  | TRUE
  | TIMES
  | STAR
  | SELECT of (string)
  | RPAR
  | PLUS
  | OR
  | NOT
  | NAME of (string)
  | MINUS
  | LPAR
  | INT of (int)
  | FROM of (string)
  | FALSE
  | EOF
  | DOT
  | DIVIDE
  | COMMA
  | AND

(* This exception is raised by the monolithic API functions. *)

exception Error

(* The monolithic API. *)

val prog: (Lexing.lexbuf -> token) -> Lexing.lexbuf -> (Ast.expr option)
