//create list of 10 names,sort them and show them in column
main() {
  List<String> names = [
    "Sheldon",
    "Robin",
    "Chandler",
    "Sonu",
    "Barney",
    "Gina",
    "Ted",
    "Jake",
    "Lucifer",
    "Missy"
  ];
  names.sort();
  names.forEach((element) {
    print(element);
  });
}
