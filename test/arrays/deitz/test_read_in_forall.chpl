config const verbose = false;

var A: [0..8, 0..8] int = [0..8, 0..8] read(int);

if verbose then
  writeln(A);

writeln(+ reduce A);
