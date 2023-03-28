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

  (*[is_prime i] returns whether [i] is divisable by any numbers. If so, [i]>1 
     and for all m from 1..[n], [n mod m <> 0]*)
  val is_prime: int -> bool

  (*[is_palindrome str] is true if for all characters at index [i] from 
   0...length str - 1, each character [c] is repeated at index [lenght str -1 -i] 
     *)
  val is_palindrome: string -> bool

  (*[second_largest lst] returns the value [i] such that there exists only one 
     value [a] that satisfies [a]>=[i] if the length of [lst] is greater at least 2.
      If the length of [lst] is 1, [second_largest lst] returns that value
     Requires: [lst] is non-empty*)
  val second_largest: int list -> int

  (*AF: the tree [4, (6, Leaf, Leaf), (10, (4, Leaf, Leaf), Leaf)] represent the 
     following tree
            4
           /  \
          6   10
             /
            4
      , where the two representations are the same, but the abstract type
      removes the leaves in its representation
      RI: Each tree can only have two subtrees, including either Leaves or
      another subtree.
     *)
  type 'a tree = 
  |Leaf
  |Node of 'a * 'a tree * 'a tree


  (*[depth t] returns the length from the root of the tree, [v1], to the
     last node in the tree, which is the value of the most nested Node in [t]
     that is not a Leaf node.*)
  val depth: 'a tree -> int
end

(*[Poly] represents immutable polynomials with integer coefficients.*)
module type Poly = sig

   (*[t] is the type of polynomials.*)
   type t 

   (*[eval x p] is [p] evaluated at [x]. Example: if [p] represents
      "3x^2 + x^2 + x", then [eval 10 p] is [3110].*)
   val eval: int -> t -> int 

   (*[create_poly lst] creates a polynomial type with the coefficient of term [i]
      corresponding to the value at index [i] of [lst]. The polynomial at index 0
      is x^0 = 1, index 1 is x^1, index 2 is x^2, and so forth. 
      Example: if l = [-3; 4; 0; 1], then [create_poly l] would create a polynomial
         type representing "-3 + 4x + 0x^2 + 1x^3"
      OR
      [create_poly lst] creates a polynomial where lst = [c0, c1...cn] creates 
      a polynomial "c0*x^0, c1*x^1,...cn*x^n"*)
   val create_poly: int list -> t

   (*[combine_poly p1 p2 op] applies [op] to [p1] and [p2] and returns the 
      resulting polynomial from this operation.*)
   val combine_poly: t -> t -> (t -> t -> t) -> t

   (*[to_string p] returns the string representation of polynomial p.*)
   val to_string: t -> string

end

module PolyImpl : Poly = struct
   (*AF: [t] is represented by a list of integers which are [t]'s coefficients, 
      from x^0...x^n, where n is the length of the list. 
      The empty list represents 0, as does [0] and [0; 0]
     RI: None*)
   type t = int list

   let eval i p = 4

   let create_poly lst = 

   let combine_poly p1 p2 fun = 

   let to_string p = ""
   
end