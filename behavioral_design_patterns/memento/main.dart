import 'example.dart';

void main() {
  final game = Game('Ahmed Ghaly', 0);
  final careTaker = CareTaker();

  // Save
  careTaker.save(game);

  // Change in score
  game.playerScore = 100;

  print('Before undo: --> ${game.playerScore}');

  // Play from last checkpoint
  careTaker.revert(game);
  print('After undo: --> ${game.playerScore}');

  print('\n=========================================\n');

  // Another Game to test save
  final game2 = Game('Another Game', 50);
  final careTaker2 = CareTaker();

  // Save
  careTaker2.save(game2);

  // Change in score
  game2.playerScore = 200;

  // Save score after change
  careTaker2.save(game2);

  print('Before undo: --> ${game2.playerScore}');

  // Play from last checkpoint
  careTaker2.revert(game2);
  print('After undo: --> ${game2.playerScore}');
}
