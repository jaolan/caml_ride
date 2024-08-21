let () = 
  print_endline "Running answer set 01...";
  
  print_endline "Testing Tail of a List...";
  let lst = [1; 2; 3; 4] in
  let tail = match Caml_ride.Set_01.last lst with
  | Some x -> x
  | None -> failwith "Expected a non-empty list" in
  assert (tail = 4);

  print_endline "Testing Last Two Els of a List...";
  let lst2 = [1; 2; 3; 4; 6] in
  let two_tail = match Caml_ride.Set_01.last_two lst2 with
  | Some (x, y) -> (x, y)
  | None -> failwith "Expected a non-empty list" in
  assert (two_tail = (4, 6));
  
  print_endline "Testing nth El of a List...";
  let lst3 = [1; 2; 6; 7; 8; 9;] in
  let get_nth = match Caml_ride.Set_01.nth_el 3 lst3 with
  | Some x -> x
  | None -> failwith "Expected a non-empty list" in
  assert (get_nth = 7);

  print_endline "Set 01 passed ✅";
