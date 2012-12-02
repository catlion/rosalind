open Batteries_uni

let repl acc c =
  let x = match c with
      'A' -> 'T'
    | 'T' -> 'A'
    | 'C' -> 'G'
    | 'G' -> 'C'
    |  _  ->  c
  in
  acc ^ (String.of_char x);;

let main () =
  let src = List.rev (String.to_list (read_line ()))
  in
  print_endline (List.fold_left repl "" src)

let () = main ()
