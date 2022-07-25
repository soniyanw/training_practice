class PC {
  void phychem() {
    print("Physics and Chemistry");
  }
}

//Science groups
//PC mandatory

mixin M on PC {
  void math() {
    print("Mathematics");
  }
}

mixin C on PC {
  void cs() {
    print("Computer Science");
  }
}

mixin B on PC {
  void bio() {
    print("Biology");
  }
}

class PCMB extends PC with M, B {
  void display() {
    phychem();
    math();
    bio();
  }
}

class PCMC extends PC with M, C {
  void display() {
    phychem();
    math();
    cs();
  }
}

class PCBC extends PC with B, C {
  void display() {
    phychem();
    bio();
    cs();
  }
}

main() {
  PCMC i = new PCMC();
  i.display();
}
