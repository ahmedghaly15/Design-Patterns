abstract class MakePizzaAlgorithm {
  void _bakePizza() => print('Baking Pizza ...');

  void definePizzaShape();

  void _putAddons() => print('Putting addons ...');

  void _heatPizza() => print('Heating pizza ...');

  void makePizza() {
    _bakePizza();
    definePizzaShape();
    _putAddons();
    _heatPizza();
  }
}

class RoundedPizza extends MakePizzaAlgorithm {
  @override
  void definePizzaShape() => print('Making a rounded pizza ...');
}

class RectanglePizza extends MakePizzaAlgorithm {
  @override
  void definePizzaShape() => print('Making a rectangular pizza ...');
}
