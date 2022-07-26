abstract class dog {
  //abstract classed-cannot be instatiated
  int _legs = 4; //Encapsulation-private
  void tail() {
    print("Has tail");
  }

  void legs() {
    print("Has ${_legs} legs --dog");
  }
}

class floof extends dog {
  //inheritance
  @override //polymorphism
  void legs() {
    print("Has ${super._legs} legs --floof");
  }
}

class whitefloof extends floof {
  //multilevel inheritance
  String color = "white";
}

class lab extends dog {}

main() {
  lab billy = new lab(); //instance or object of a class
  print(billy
      ._legs); // no error(using a private member outside the class)-encapsulation is on library level not in class level,private members of a class can be used outside that class as far as it is in the same library
  billy.legs();

  whitefloof browny = whitefloof();
  browny.tail();
  browny.legs();
}
