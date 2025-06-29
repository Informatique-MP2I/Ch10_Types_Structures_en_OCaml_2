(* Cramer.ml *)
let resolve_2_2_Gauss (sys_mat:Matrix.mat) (cons_mat:Matrix.mat) =
  if Matrix.get sys_mat 0 0 = 0. then
    begin
      Matrix.swap_lines sys_mat 0 1;
      Matrix.swap_lines cons_mat 0 1
    end;
  let pivot = Matrix.get sys_mat 0 0 in
  let fact_pivot = (Matrix.get sys_mat 1 0) /. pivot in
  Matrix.set sys_mat 1 0 ((Matrix.get sys_mat 1 0)-.fact_pivot*.(Matrix.get sys_mat 0 0));
  Matrix.set sys_mat 1 1 ((Matrix.get sys_mat 1 1)-.fact_pivot*.(Matrix.get sys_mat 0 1));
  Matrix.set cons_mat 1 0 ((Matrix.get cons_mat 1 0)-.fact_pivot*.(Matrix.get cons_mat 0 0));
  let sol_y = (Matrix.get cons_mat 1 0) /. (Matrix.get sys_mat 1 1) in
  let sol_x = ((Matrix.get cons_mat 0 0) -. (Matrix.get sys_mat 0 1)*.sol_y)/.(Matrix.get sys_mat 0 0) in
  let sol_mat = Matrix.create 2 1 0.0 in
  Matrix.set sol_mat 0 0 sol_x;
  Matrix.set sol_mat 1 0 sol_y;
  sol_mat
