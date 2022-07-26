abstract class dog {
  //abstract classed-cannot be instantiated
  int _legs = 4; //Encapsulation-private
  void tail() {}
  void legs() {}
}

class floof extends dog {
  //inheritance
  void tail() {
    print("Has tail");
  }

  void legs() {
    print("Has ${super._legs} legs --dog");
  }
}

class whitefloof extends floof {
  //multilevel inheritance
  @override //polymorphism
  void legs() {
    print("Has ${super._legs} legs --whitefloof");
  }

  String color = "white";
}

class lab extends dog {
  void tail() {
    print("Has tail");
  }

  void legs() {
    print("Has ${super._legs} legs --dog");
  }
}

main() {
  lab billy = new lab(); //instance or object of a class
  print(billy
      ._legs); // no error(using a private member outside the class)-encapsulation is on library level not in class level,private members of a class can be used outside that class as far as it is in the same library
  billy.legs();

  whitefloof browny = whitefloof();
  browny.tail();
  browny.legs();
}
