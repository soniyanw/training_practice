//combine three maps
main() {
  //combining n,m,o into a single map and storing it in newmap
  Map<String, int> n = {"a": 1, "b": 6, "i": 9};
  Map<String, int> m = {"u": 4, "y": 8};
  Map<String, int> o = {"t": 6, "j": 4};
  Map<String, int> newmap = {};
  newmap.addAll(n);
  newmap.addAll(m);
  newmap.addAll(o);

  print(newmap);
}
