import 'package:flutter/material.dart';
import 'package:tictactoe/models/game_values.dart';

class SwitchPlayRound{
  final GameValues _gameValues = GameValues.getInstance();

  void switchPlayRound(){
    if(!_gameValues.playWithComputer){

      if(_gameValues.playerRound ==0){
        _gameValues.playerRound = 1;
      }else{
        _gameValues.playerRound = 0;
      }

    }

  }

}