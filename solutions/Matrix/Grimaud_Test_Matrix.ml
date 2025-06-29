let () = 
  let sys_mat = Matrix.create 2 2 0.0 in
  let (r,c) = Matrix.dimensions sys_mat in
  Printf.printf "dim %d %d\n" r c;
  Printf.printf "elem %f\n" (Matrix.get sys_mat 1 0);
  Matrix.set sys_mat 0 0 1.;
  Matrix.set sys_mat 0 1 2.;
  Matrix.set sys_mat 1 0 3.;
  Matrix.set sys_mat 1 1 4.;
  Printf.printf "elem %f\n" (Matrix.get sys_mat 1 1);
  Matrix.print sys_mat;
  Matrix.swap_lines sys_mat 0 1;
  Matrix.print sys_mat;
  Matrix.swap_cols sys_mat 0 1;
  Matrix.print sys_mat
  
