import 'dart:math';

import 'package:tictactoe/models/game_values.dart';

class ComputerRandom{

  final Random _random = Random();
  final GameValues _gameValues = GameValues.getInstance();
  int? rand;
  int choiceNumber(){
  do{
      rand =_random.nextInt(9)+1;
  }while(_gameValues.buttonsBooked[rand!-1]!='') ;
  return rand!;

  }

}