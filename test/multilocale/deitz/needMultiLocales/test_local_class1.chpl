class C {
  var x = 17;
}

proc main {
  var c = new C();
  writeln(here.id, " ", c.x);
  c.x = 18;
  on rootLocale.getLocale(1) {
    writeln(here.id, " ", c.x);
    c.x = 19;
  }
  writeln(here.id, " ", c.x);
}
