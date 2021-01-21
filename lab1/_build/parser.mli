
(* The type of tokens. *)

type token = 
  | TRUE
  | TIMES
  | STAR
  | SELECT
  | RPAR
  | PLUS
  | OR
  | NOT
  | MINUS
  | LPAR
  | INT of (int)
  | ID of (string)
  | FROM
  | FALSE
  | EOF
  | DOT
  | DIVIDE
  | COMMA
  | AND

(* This exception is raised by the monolithic API functions. *)

exception Error

(* The monolithic API. *)

val prog: (Lexing.lexbuf -> token) -> Lexing.lexbuf -> (Ast.stmt option)
