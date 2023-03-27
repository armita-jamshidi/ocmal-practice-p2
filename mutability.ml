type student = {
  string name;
  mutable float gpa;
}

let alice = {
  name = "Alice";
  gpa = 3.7;
}

alice.gpa <- 4.0
