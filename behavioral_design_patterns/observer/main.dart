import 'example.dart';

void main() {
  final Observable aboShagy = EliFeha();
  final Player aboghaly = Player('aboghaly', aboShagy);
  final Player ma7ma7a = Player('Ma7ma7a', aboShagy);
  final Player Hamo = Player('7amo', aboShagy);

  print('aboghaly Darab aboShagy\n');
  aboghaly.edrab();

  print('\n============================================================\n');

  print('Ma7ma7a Darab aboShagy\n');
  ma7ma7a.edrab();

  print('\n============================================================\n');

  print('7amo Darab aboShagy\n');
  Hamo.edrab();
}
