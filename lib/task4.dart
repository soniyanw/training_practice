import 'dart:io';

//adding element whose length is greater than 5
main() {
  List<String> n = [];
  int c;
  do {
    print("Enter element to be added");
    String e = stdin.readLineSync()!;
    if (e.length > 5) {
      n.add(e);
      print("Added");
      print("The current state of list:${n}");
    } else {
      print("Element length lesser than 5,cannot be added");
    }
    print("Enter 1 to add more elements or 0 to quit");
    c = int.parse(stdin.readLineSync()!);
  } while (c == 1);
}
