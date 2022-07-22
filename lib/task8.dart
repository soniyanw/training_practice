//using extension with list and map

//adding a string into the list after 2 elements
extension on List {
  List addstr() {
    List n = [];
    for (int i = 0; i < this.length; i++) {
      n.add(this[i]);
      if (i % 2 == 1) {
        n.add('Hii');
      }
    }
    return n;
  }
}

//removing elements from map whose values are odd
extension on Map {
  Map removeodd() {
    this.removeWhere((key, value) => value % 2 != 0);
    return this;
  }
}

main() {
  Map<String, int> u = {
    "a": 9898,
    "j": 879,
    "h": 687,
    "u": 8089,
    "y": 888,
    "o": 788
  };
  List m = [
    2,
    '89',
    4,
    '098',
    342,
    46,
    'i09',
    '989',
    9080.0,
    [1, 3, 4],
    908,
    'UUU'
  ];
  print(m.addstr());
  print(u.removeodd());
}
