//removing elements if they are not divisible by 2
main(List<String> args) {
  List<int> n = [7, 4, 6, 2, 66, 39, 89, 90, 44, 78, 35, 23, 34, 24, 56, 60];
  List<int> remove = [];
  n.forEach((element) {
    if (element % 2 != 0) {
      remove.add(element);
    }
  });
  n.removeWhere((element) => remove.contains(element));
  print(n);
}
