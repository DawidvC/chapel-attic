proc main {
  var x: int = 17;
  writeln(here.id, " x=", x);
  x = x + 1;
  on rootLocale.getLocale(1) {
    writeln(here.id, " x=", x);
    x = x + 1;
  }
  writeln(here.id, " x=", x);
}
