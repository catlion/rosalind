let dna = read_line () in
let replace =
  Str.global_replace (Str.regexp "T") "U"
in
Printf.printf "%s" (replace dna)
