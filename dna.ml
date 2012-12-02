type mmap = {
  a: int;
  c: int;
  g: int;
  t: int;
}

let explode s =
  let rec exp i l =
    if i < 0 then l else exp (i - 1) (s.[i] :: l)
  in
  exp (String.length s - 1) []

let p = read_line ()
let map = { a=0; c=0; g=0; t=0 }

let iter' acc i =
  match i with
    | 'A' -> { acc with a=acc.a + 1 }
    | 'C' -> { acc with c=acc.c + 1 }
    | 'G' -> { acc with g=acc.g + 1 }
    | 'T' -> { acc with t=acc.t + 1 }
    | _ -> raise Not_found

let res = List.fold_left iter' map (explode p)
let print' x =
  Printf.printf "%i %i %i %i" x.a x.c x.g x.t;;
print' res
