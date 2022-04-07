import '../../models/game_values.dart';
import 'abs_set_value.dart';

class SetValuePlayerTwo implements SetValue{
  final GameValues _gameValues = GameValues.getInstance();
  @override
  void setValue(int buttonId) {
    _gameValues.playerTwoNumbers.add(buttonId);
    _gameValues.buttonsBooked[ buttonId -1] = 'x';
    _gameValues.playerRound =0;
  }

}