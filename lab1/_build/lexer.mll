(* COMP 4959 - Lab 1 *)
(* A01080411 - Richard Le - Set 4V *)
{

open Lexing
open Parser

exception SyntaxError of string

}

(*IDENTIFIERS: named regular expression *)
let white = [' ' '\t']+
let newline = '\r' | '\n' | "\r\n"
let int = ['0'-'9']+
let id = ['a'-'z''A'-'Z']['a'-'z''A'-'Z''0'-'9''_']*

(*RULES*)
rule read = parse
	| white					{ read lexbuf }
	| newline				{ new_line lexbuf; read lexbuf }
	| int						{ INT (int_of_string (Lexing.lexeme lexbuf)) }
	| "select"			{ SELECT (Lexing.lexeme lexbuf) }
	| "from"				{ FROM  (Lexing.lexeme lexbuf) } 
	|	"true"				{ TRUE }
	| "false"				{ FALSE }
	| "and"					{ AND }
	| "or"					{ OR }
	| "not"					{ NOT }
	| "*"						{ STAR }
	|	'+'						{ PLUS }
	| '-'						{ MINUS }
	| '*'						{ TIMES }
	| '/'						{ DIVIDE }	
	| '('						{ LPAR }
	| ')'						{ RPAR }
	|	id						{ NAME (Lexing.lexeme lexbuf) }
	| eof						{ EOF }
	| _ { raise (SyntaxError("Unexpected Token: " ^ Lexing.lexeme lexbuf)) }
