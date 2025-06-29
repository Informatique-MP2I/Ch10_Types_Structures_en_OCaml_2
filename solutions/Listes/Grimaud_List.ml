let rec last l =
  match l with
  | [] -> None
  | [x] -> Some x
  | _::t -> last t

let rec append l1 l2 =
  match l1 with
  | [] -> l2
  | h::t -> h::append t l2

let remove_at n l =
  assert (n>=0 && n<List.length l);
  let rec aux n l =
    match l with
    | [] -> []
    | h::t -> if n = 0 then t else h::aux (n-1) t
  in
  aux n l

let insert_at value n l =
  assert (n>=0 && n<=List.length l);
  let rec aux n l =
    match l with
    | [] -> [value]
    | h::t -> if n = 0 then [value;h]@t else h::aux (n-1) t
  in
  aux n l
                                                 
let () =
  Printf.printf "Lists.\n";
  let l1 = [1;2;3;4] in
  let l2 = [] in
  let l3 = [5;6;7] in
  let l4 = ['a';'b';'c';'d';'e'] in
  begin
    match last l1 with
    | Some x -> Printf.printf "Last element : %d.\n" x
    | None -> Printf.printf "The list is empty.\n"
  end;
  List.iter (fun x -> Printf.printf "%d " x) (append l1 l3);
  Printf.printf "\n";
  List.iter (fun x -> Printf.printf "%c " x) (remove_at 3 l4);
  Printf.printf "\n";
  List.iter (fun x -> Printf.printf "%c " x) (insert_at 'r' 0 l4);
  Printf.printf "\n"
