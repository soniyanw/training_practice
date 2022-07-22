import 'dart:io';

//checking if <k,v> is present in map and add it without using []
main() {
  Map<String, int> n = {"Hello": 5, "Hii": 9, "hey": 7};
  print("Enter the key to be added into the map");
  String k = stdin.readLineSync()!;
  print("Enter the value to be added");
  int v = int.parse(stdin.readLineSync()!);
  if (n.containsKey(k)) {
    if (n[k] == v)
      print("Key and value already present in map");
    else
      print("Key already existing in map");
  } else {
    n.addAll({k: v});
  }
  print(n);
}
