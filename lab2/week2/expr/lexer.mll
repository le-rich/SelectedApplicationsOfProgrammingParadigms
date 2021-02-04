{
open Lexing  (* defines lexbuf structure that holds the state of the lexer *)
open Parser  (* generated from parser.mly *)

exception SyntaxError of string
}

(* IDENTIFIERS: named regular expressions *)
let white = [' ' '\t']+
let newline = '\r' | '\n' | "\r\n"
let int = ['0'-'9']+
let id = ['a'-'z''A'-'Z']['a'-'z''A'-'Z''_']*


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
  | '='           { EQ }
  | "let"         { LET }
  | "in"          { IN }
  | "end"         { END }
  | id            { ID (Lexing.lexeme lexbuf) }
  | eof           { EOF }
  | _  { raise (SyntaxError ("Unexpected char: " ^ Lexing.lexeme lexbuf)) }

