import 'example.dart';

void main() {
  final mechanic = Mechanic();

  print('Mechanic starts working on the Toyota car:');
  mechanic.algorithm = Toyota();
  mechanic.disassembleCar();

  print('\n==================================================\n');

  print('Mechanic starts working on the Honda car:');
  mechanic.algorithm = Honda();
  mechanic.disassembleCar();
}
