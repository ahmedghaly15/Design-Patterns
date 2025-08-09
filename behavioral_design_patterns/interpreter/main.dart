// main method is the client code that uses the interpreter pattern
import 'example.dart';

void main() {
  final interpreter = Interpreter().buildInterpretationTree();
  final context = 'Tigers Bears';
  print('$context is ${interpreter.interpret(context)}'); // true
}
