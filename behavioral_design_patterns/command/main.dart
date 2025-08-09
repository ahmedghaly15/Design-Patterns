// 3am Ahmed (the sender)
import 'example.dart';

void main() {
  final osama = Invoker();
  final amAli = Receiver("3am Ali");

  final sendMoneyCommand = SendMoneyCommand(amAli);

  // 3am Ahmed sends money to 3am Ali through (osama)
  osama.execute(sendMoneyCommand);

  print('\n=========================================\n');

  final mohamed = Receiver("Mohamed");
  final emad = Receiver("Emad");

  final sendMoneyToAllCommand = SendMoneyToAllCommand([amAli, mohamed, emad]);
  osama.execute(sendMoneyToAllCommand);
}
