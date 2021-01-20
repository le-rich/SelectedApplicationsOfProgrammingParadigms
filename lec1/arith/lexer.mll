{
(* header: copied to generated file *)

open Lexing  (* defines lexbuf structure that holds the state of the lexer *)
open Parser  (* generated from parser.mly *)

exception SyntaxError of string
}

(* IDENTIFIERS: named regular expressions *)
let white = [' ' '\t']+
let newline = '\r' | '\n' | "\r\n"
let int = ['0'-'9']+

(* RULES *)
(* Note: Lexing.lexeme lexbuf returns the string matched by the regular
   expression *)
rule read = parse
  | white         { read lexbuf }  (* calls read recursively *)
  | newline       { new_line lexbuf; read lexbuf }
  | int           { INT (int_of_string (Lexing.lexeme lexbuf)) }
  | '+'           { PLUS }
  | '-'           { MINUS }
  | '*'           { TIMES }
  | '('           { LPAR }
  | ')'           { RPAR }
  | eof           { EOF }
  | _  { raise (SyntaxError ("Unexpected char: " ^ Lexing.lexeme lexbuf)) }

{
  (* TRAILER: can be omitted *)
}
