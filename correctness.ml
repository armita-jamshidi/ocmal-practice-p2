open Poly

module PolyImpl : Poly = struct
  (*AF: [t] is represented by a list of integers which are [t]'s coefficients, 
     from x^0...x^n, where n is the length of the list. 
     The empty list represents 0, as does [0] and [0; 0]
    RI: None*)
  type t = int list


  
  
end