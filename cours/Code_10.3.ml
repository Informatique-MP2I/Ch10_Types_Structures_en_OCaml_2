(* Initial string *)
let phrase = "OCaml is a functional programming language" in 
(* Using String.length to get the length of phrase *)
let length = String.length phrase in
(* Using String.sub to extract "language" from phrase *)
let word = String.sub phrase 34 8 in 
(* Checking if the letter 'a' is contained in phrase *)
let contains_a = String.contains phrase 'a' in
(* Finding the index of the first occurrence of 'a' in phrase *)
let index_of_a = String.index phrase 'a' in
Printf.printf "The phrase contains %d characters and the choosen word is %s. The letter a exists in this phrase : %B and its first occurence is at index %d : %c.\n"
  length word contains_a index_of_a phrase.[index_of_a]
