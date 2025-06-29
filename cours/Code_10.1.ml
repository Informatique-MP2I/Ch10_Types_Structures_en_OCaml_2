(* Function to calculate 2^(i+j) *)
let power i j = int_of_float (2. ** float_of_int (i + j)) in
(* Create a 3x2 matrix with a default value of 2 *)
let matrix = Array.make_matrix 3 2 2 in 
(* Iterate over the matrix and update each element *)
for i = 0 to Array.length matrix - 1 do
  for j = 0 to Array.length matrix.(0) - 1 do
    matrix.(i).(j) <- power i j
  done
done;
(* Print the matrix *)
Array.iter (fun row ->
  Array.iter (fun elem -> Printf.printf "%d " elem) row;
  print_newline ()
) matrix
