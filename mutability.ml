(*mutable fields*)
type student = {
  name: string;
  mutable gpa: float;
}

let alice = {
  name = "Alice";
  gpa = 3.7;
}

(* alice.gpa <- 4.0;; *)

(*refs*)
(*creates a reference with contents [true]*)
let x = ref true

(*creates a reference with contents as a list of ints*)
let y = ref [3; 4; 2]

(*creates a list of integer references*)
let z = [ref 3; ref 2]

(*TODO figure out inc fun exercise*)

(*addition assignment*)
let (+:=) x y = x := !x+y

(*physical equality*)
x == y -> true 
x == z -> false 
x = y -> true 
x = z -> true 
x := 1 -> ()
x = y -> true
x = z -> false 

(*norm*)
(*the float array [|x1; x2;...; x2|] represents the vector
   (x1,...xn)
   RI: the array is non-empty*)
type vector = float array

(*norm with fold_left*)
let norm vect_arr = 
  Array.fold_left (fun acc x-> acc +. (x*.x)) 0. vect_arr

(*norm, using a loop*)
let norm v = 
  let acc = ref 0. in
  for x=0 to Array.length v-1 do
    acc := !acc +. ((v.(x)) *. v.(x))
  done; !acc

(*normalize using iter*)
let normalize_iter v = 
  let len = norm v in 
  Array.iteri (fun i elem -> v.(i) <- (v).(i) /. len) v

(*normalize using a loop*)
let normalize_loop vect_arr = 
  let vec_len = norm vect_arr in
  for x=0 to Array.length vect_arr -1 do
    vect_arr.(x) <- (vect_arr.(x) /. vec_len)
  done






