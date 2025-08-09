abstract class AirPortTower {
  void registerAircraft(AirCraft aircraft);
  void requestLanding(AirCraft aircraft);
  void notifySuccess();
}

abstract class AirCraft {
  final String name;

  AirCraft(this.name);

  void notify(String message);
  void requestLanding();
  void notifySuccess();
}

class AirBus extends AirCraft {
  final AirPortTower _tower;

  AirBus(this._tower) : super('AirBus') {
    _tower.registerAircraft(this);
  }

  @override
  void notify(String message) => print('AirBus received message: $message');

  @override
  void notifySuccess() => _tower.notifySuccess();

  @override
  void requestLanding() => _tower.requestLanding(this);
}

class MiniAirBus extends AirCraft {
  final AirPortTower _tower;

  MiniAirBus(this._tower) : super('MiniAirBus') {
    _tower.registerAircraft(this);
  }

  @override
  void notify(String message) => print('MiniAirBus received message: $message');

  @override
  void notifySuccess() => _tower.notifySuccess();

  @override
  void requestLanding() => _tower.requestLanding(this);
}

class CairoAirPort extends AirPortTower {
  final String _towerName = 'Cairo AirPort';
  List<AirCraft> _airCrafts = [];
  bool _isTerminalEmpty = true;

  @override
  void registerAircraft(AirCraft aircraft) {
    _airCrafts.add(aircraft);
    print('Aircraft ${aircraft.name} registered: at $_towerName');
  }

  @override
  void requestLanding(AirCraft aircraft) {
    if (!_isTerminalEmpty) {
      aircraft.notify('$_towerName: Landing denied, terminal is occupied.');
    } else {
      _isTerminalEmpty = false;
      aircraft.notify('$_towerName: Landing granted for ${aircraft.name}.');
      _airCrafts.forEach((airCraft) {
        airCraft.notify(
          '$_towerName: An AirCraft ${airCraft.name} will land soon',
        );
      });
    }
  }

  @override
  void notifySuccess() {
    _isTerminalEmpty = true;
    _airCrafts.forEach((airCraft) {
      airCraft.notify('$_towerName AirTower: Terminal is now empty.');
    });
  }
}
