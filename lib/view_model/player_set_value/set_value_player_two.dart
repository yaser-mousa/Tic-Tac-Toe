import '../../models/game_values.dart';
import 'abs_set_value.dart';

class SetValuePlayerTwo implements SetValue{
  final GameValues _gameValues = GameValues.getInstance();
  @override
  void setValue(int buttonId) {
    _gameValues.playerTwoBoxesNumbers.add(buttonId);
    _gameValues.buttonsBooked[ buttonId -1] = _gameValues.playerTwoChar;
    _gameValues.bookedBoxesCount++;
  }

}