import 'example.dart';

void main() {
  print('\t\tRounded Pizza');
  final pizza = RoundedPizza();
  pizza.makePizza();

  print('\n===========================================\n');

  print('\t\tRectangular Pizza');
  final anotherPizza = RectanglePizza();
  anotherPizza.makePizza();
}
