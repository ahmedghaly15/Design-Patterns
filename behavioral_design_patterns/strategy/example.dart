abstract class Algorithm {
  void perform();
}

class Toyota implements Algorithm {
  @override
  void perform() {
    print('Disassembling Toyota car...');
  }
}

class Honda implements Algorithm {
  @override
  void perform() {
    print('Disassembling Honda car...');
  }
}

class Mechanic {
  Algorithm? _algorithm;

  set algorithm(Algorithm algorithm) {
    _algorithm = algorithm;
  }

  void disassembleCar() {
    _algorithm?.perform();
  }
}
