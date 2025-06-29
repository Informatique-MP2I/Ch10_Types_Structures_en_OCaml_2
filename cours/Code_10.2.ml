(* Function to calculate 2^(i+j) *)
let power i j = int_of_float (2. ** float_of_int (i + j)) in
(* Create a 3x2 matrix with a default value of 2^(i+j) *)
let matrix =
  Array.init 3 (fun i -> Array.init 2 (fun j -> power i j)) in
(* Print the matrix *)
Array.iter (fun row ->
  Array.iter (fun elem -> Printf.printf "%d " elem) row;
  print_newline ()
) matrix
