interpret "let hello = fun x -> x * x  in hello 2 end";;
interpret "(fun x -> if x < 13 then x + 4 else x - 4 end) (-32)";;
interpret "(fun x -> x * 2) 16";;

interpret "15 < 37";;
interpret "37 != 15";; 
interpret "(15 + 32) <= (32 / 4)";;
interpret "14 * 32 - 400";;
interpret "100 > 14";;
interpret "14 >= 14";;


interpret "if 1 == 24 then true else false end";;
