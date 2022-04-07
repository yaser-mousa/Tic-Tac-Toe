import 'package:flutter/material.dart';
import 'package:tictactoe/models/game_values.dart';
import 'package:tictactoe/view_model/player_set_value/set_value_player_one.dart';
import 'package:tictactoe/view_model/player_set_value/set_value_player_two.dart';

import 'check_allow_play.dart';
import 'check_player_list.dart';
import 'check_win.dart';

class GameAdmin{

 final GameValues _gameValues = GameValues.getInstance();

final SetValuePlayerOne _setValuePlayerOne = SetValuePlayerOne();

final SetValuePlayerTwo _setValuePlayerTwo = SetValuePlayerTwo();

final CheckAllowPlay _checkAllowPlay = CheckAllowPlay.getInstance();

final CheckWin _checkWin = CheckWin.getInstance();
bool isWin = false;
static GameAdmin? _Instance;
GameAdmin ._();

 static GameAdmin getInstance(){
   _Instance??= GameAdmin ._();
   return _Instance!;
 }

  void addNewNumber(int buttonId){
    if(_checkAllowPlay.checkAllChecks(buttonId)){
// print('/////////////');
    switch ( _gameValues.playerRound){
      case 0:
        _setValuePlayerOne.setValue(buttonId);
      if(_gameValues.playerOneNumbers.length>2){
        isWin =_checkWin.checkNumbers(_gameValues.playerOneNumbers, _gameValues.playerRound);
      }

        break;

      case 1:
     _setValuePlayerTwo.setValue(buttonId);
     if(_gameValues.playerTwoNumbers.length>2){
       isWin =_checkWin.checkNumbers(_gameValues.playerTwoNumbers, _gameValues.playerRound);
     }

        break;
    }





    _gameValues.roundEnd = true;
    }


  }


}

