import 'package:tictactoe/models/game_values.dart';

import 'abs_set_value.dart';

class SetValuePlayerOne implements SetValue{
  final GameValues _gameValues = GameValues.getInstance();

  @override
  void setValue(int buttonId) {

    _gameValues.playerOneNumbers.add(buttonId);
    _gameValues.buttonsBooked[ buttonId -1] = 'o';
    _gameValues.playerRound =1;
  }



}

