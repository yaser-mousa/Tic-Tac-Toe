import '../../models/game_values.dart';
import 'abs_set_value.dart';

class SetValuePlayerComputer implements SetValue{
  final GameValues _gameValues = GameValues.getInstance();

  @override
  void setValue(int buttonId) {
    _gameValues.computerBoxesNumbers.add(buttonId);
    _gameValues.buttonsBooked[ buttonId -1] = _gameValues.yasserChar;
    _gameValues.bookedBoxesCount++;

  }



}