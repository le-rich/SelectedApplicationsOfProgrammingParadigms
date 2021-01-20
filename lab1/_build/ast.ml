type stmt =
  | Select of expr list                (* fields are expressions     *)
            * string list              (* FROM ...                   *)

and column =
  | Column of string                   (* column name: c             *)
  | TableColumn of string * string     (* qualified column name: t.c *)

and expr =
  | Star                               (* * = all fields             *)
  | ColumnExpr of column               (* column expression          *)
  | Int of int                         (* integer constant           *)
  | Prim of string * expr list         (* Built-in function          *)
