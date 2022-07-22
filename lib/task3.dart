//adding elements from one map to another
main() {
  //adding all elements from map n to map m
  Map<String, int> n = {"a": 1, "b": 6, "i": 9};
  Map<String, int> m = {"u": 4, "y": 8};
  m.addAll(n);
  print(m);

  //another way
  //adding all elements from map n to map u
  Map<String, int> u = {"u": 4, "y": 8};
  n.forEach((key, value) {
    u.addAll({key: value});
  });
  print(u);
}
