(* Abstract type for a matrix *)
type mat = float array array

(* Creates a new matrix with given dimensions and initial value *)
(* val create : int -> int -> float -> mat*)
let create rows cols value =
  Array.make_matrix rows cols value

(* Returns the dimensions of the matrix (number of rows and columns) *)
(*val dimensions : mat -> int * int*)
let dimensions matrix =
  (Array.length matrix, Array.length matrix.(0))
                        
(* Returns the value at a given position in the matrix *)
(* val get : mat -> int -> int -> float*)
let get matrix i j =
  let (r,c) = dimensions matrix in
  assert(i>=0 && i<r && j>=0 && j<c);
  matrix.(i).(j)
    
(* Modifies the value at a given position in the matrix *)
(* val set : mat -> int -> int -> float -> unit *)
let set matrix i j value =
  let (r,c) = dimensions matrix in
  assert(i>=0 && i<r && j>=0 && j<c);
  matrix.(i).(j) <- value

(* Prints the matrix *)
(* val print : mat -> unit *)
let print matrix =
  Array.iter (fun row ->
      Array.iter (fun elem -> Printf.printf "%f " elem) row;
      print_newline ()
    ) matrix;
  print_newline ()
    
(* Swaps two rows in the matrix *)
(* val swap_line : mat -> int -> int -> unit *)
let swap_lines matrix i j =
  let (r,_) = dimensions matrix in
  assert(i>=0 && i<r && j>=0 && j<r);
  let tmp = matrix.(i) in
  matrix.(i) <- matrix.(j);
  matrix.(j) <- tmp
    
(* Swaps two columns in the matrix *)
(* val swap_cols : mat -> int -> int -> unit *)
let swap_cols matrix i j =
  let (_,c) = dimensions matrix in
  assert(i>=0 && i<c && j>=0 && j<c);
  Array.iter (fun row ->
      let tmp = row.(i) in
      row.(i) <- row.(j);
      row.(j) <- tmp
    ) matrix
