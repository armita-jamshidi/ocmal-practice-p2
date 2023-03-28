module type Correctness = sig
  (*[num_vowels s] is the number of vowels in [s]. These include
     ['a', 'e', 'i', 'o', 'u', 'A', 'E', 'I', 'O', 'U']. We do not 
    include y as a vowel*)
  val num_vowels: string -> int

  (*[is_sorted lst] returns whether or not the list is sorted, according
     to its type, 'a. 
     Example: if lst = [3; 4; 1; 2], [is_sorted lst] will return [False].
     For all [i, j] from [0 <= i <= j <= length lst], it is the case that
     [l at index i <= l at index j]*)
  val is_sorted: 'a list -> bool

  (*[sort lst] returns [lst] in order, such that: for all [i, j] in [lst], where
     [0 <= i <= j <= length lst], [lst.(i) < lst.(j)]*)
  val sort: 'a list -> 'a list

  (*[max lst] returns [x] satisfying: for all elements [e] in [lst], [x >= e]
     List.mem lst x = true.*)
  val max: 'a list -> 'a

end