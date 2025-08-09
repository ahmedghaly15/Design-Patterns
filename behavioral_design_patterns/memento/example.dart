// Memento
class CheckPoint {
  final String _playerName;
  final int _playerScore;

  CheckPoint(this._playerName, this._playerScore);

  String get playerName => _playerName;
  int get playerScore => _playerScore;
}

// Originator
class Game {
  String playerName;
  int playerScore;

  Game(this.playerName, this.playerScore);

  CheckPoint save() {
    return CheckPoint(playerName, playerScore);
  }

  void revert(CheckPoint checkPoint) {
    playerName = checkPoint.playerName;
    playerScore = checkPoint.playerScore;
  }
}

class CareTaker {
  List<CheckPoint> _saves = [];

  void save(Game game) {
    _saves.add(game.save());
  }

  void revert(Game game) {
    game.revert(_saves.removeLast());
  }
}
