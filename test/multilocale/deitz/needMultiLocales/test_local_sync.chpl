extern proc printf(x...);

proc main {
  var s: sync int;

  s = 2;

  on rootLocale.getLocale(1) {
    var i = s;
    printf("%s\n", here.id + " " + i);
  }

  s = 3;

  on rootLocale.getLocale(1) {
    var i = s;
    printf("%s\n", here.id + " " + i);
  }
}
