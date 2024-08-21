(* Tail of a list *)
(* Match none, single list or rec. extract head until end *)
let rec last = function
  | [] -> None
  | [ x ] -> Some x
  | _ :: lst -> last lst

let rec last_two = function
  | [] | [_] -> None
  | [x; y] -> Some (x, y)
  | _ :: lst -> last_two lst

let rec nth_el n = function
  | [] -> None
  | hd :: tl -> if n = 0 then Some hd else nth_el (n - 1) tl