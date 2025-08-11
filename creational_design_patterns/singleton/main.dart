import 'example.dart';

void main() {
  final s1 = Singleton();
  final s2 = Singleton();

  print(identical(s1, s2)); // true
}
