(* Abstract type for a matrix *)
type mat

(* Creates a new matrix with given dimensions and initial value *)
val create : int -> int -> float -> mat

(* Returns the dimensions of the matrix (number of rows and columns) *)
val dimensions : mat -> int * int

(* Returns the value at a given position in the matrix *)
val get : mat -> int -> int -> float

(* Modifies the value at a given position in the matrix *)
val set : mat -> int -> int -> float -> unit

(* Prints the matrix *)
val print : mat -> unit

(* Swaps two rows in the matrix *)
val swap_lines : mat -> int -> int -> unit

(* Swaps two columns in the matrix *)
val swap_cols : mat -> int -> int -> unit

