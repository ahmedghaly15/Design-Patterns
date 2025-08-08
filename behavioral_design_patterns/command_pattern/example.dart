class Receiver {
  final String name;

  Receiver(this.name);

  int _money = 0;

  int get money => _money;

  void sendMoney(int amount) {
    _money += amount;
    print("$name: Sent \$$amount. Total money: \$$_money");
  }
}

abstract class Command {
  void execute();
}

class Invoker {
  void execute(Command command) {
    command.execute();
  }
}

class SendMoneyCommand extends Command {
  final Receiver _receiver;

  SendMoneyCommand(this._receiver);

  @override
  void execute() {
    _receiver.sendMoney(100);
  }
}

class SendMoneyToAllCommand extends Command {
  final List<Receiver> _receivers;

  SendMoneyToAllCommand(this._receivers);

  @override
  void execute() {
    for (final receiver in _receivers) {
      receiver.sendMoney(100);
    }
  }
}
