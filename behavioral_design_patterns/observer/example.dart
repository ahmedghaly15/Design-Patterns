abstract class Observer {
  late final Observable observable;

  /// Updates the observer with the latest data from the observable.
  void update();
}

abstract class Observable {
  final List<Observer> _observers = [];

  String get state;

  set setState(String value);

  void attach(Observer observer) {
    _observers.add(observer);
  }

  void detach(Observer observer) {
    _observers.remove(observer);
  }

  void notifyObservers() {
    for (final observer in _observers) {
      observer.update();
    }
  }
}

class EliFeha extends Observable {
  String _state = 'Silent';

  @override
  set setState(String value) {
    _state = value;
    notifyObservers();
  }

  @override
  String get state => _state;
}

class Player extends Observer {
  final String name;
  final Observable observable;

  Player(this.name, this.observable) {
    observable.attach(this);
  }

  @override
  void update() {
    print('$name Heard aboShagy\'s "${observable.state}"');
  }

  void edrab() {
    observable.setState = 'Ayyyyyyy';
  }
}
