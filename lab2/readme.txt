Function Definition example:
"fun param1 -> param1 * param1"

This by itself is anonymous as there's no name, however when combined with let
you can both define it as a named function and invoke it.

Function Application example:
"let hello = fun x -> x * x  in hello 2 end";; returns: Int 4

You can also invoke a function in-place like this:
"(fun x -> x * 2) 4";;  returns: Int 8


usage for the entire lab:
./build
utop 
#use "tests.ml";;

from there you can also run interpret <string> to evaluate
or parse <string> to parse a string
