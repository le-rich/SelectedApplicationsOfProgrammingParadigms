
(* The type of tokens. *)

type token = 
  | TRUE
  | TIMES
  | THEN
  | RPAR
  | PLUS
  | OR
  | NOT
  | MINUS
  | LT
  | LPAR
  | LET
  | INT of (int)
  | IN
  | IF
  | ID of (string)
  | GT
  | FUN
  | FALSE
  | EQ
  | EOF
  | END
  | ELSE
  | DIVIDE
  | BANG
  | ARROW
  | AND

(* This exception is raised by the monolithic API functions. *)

exception Error

(* The monolithic API. *)

val prog: (Lexing.lexbuf -> token) -> Lexing.lexbuf -> (Ast.expr option)
