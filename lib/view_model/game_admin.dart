import 'package:flutter/material.dart';
import 'package:tictactoe/models/game_values.dart';
import 'package:tictactoe/share/componanets/componanets.dart';
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

static GameAdmin? _instance;
GameAdmin ._();

 static GameAdmin getInstance(){
   _instance??= GameAdmin ._();
   return _instance!;
 }

  Future<void> addNewNumber(int buttonId) async {

    if(_checkAllowPlay.checkAllChecks(buttonId)){

    switch ( _gameValues.playerRound){
      case 0:
        _setValuePlayerOne.setValue(buttonId);
      if(_gameValues.playerOneNumbers.length>2){
        _gameValues.isWin =_checkWin.checkNumbers(_gameValues.playerOneNumbers, _gameValues.playerRound);

      }
        _gameValues.playerRound =1;



        break;

      case 1:
     _setValuePlayerTwo.setValue(buttonId);
     if(_gameValues.playerTwoNumbers.length>2){
       _gameValues.isWin =_checkWin.checkNumbers(_gameValues.playerTwoNumbers, _gameValues.playerRound);
     }
     _gameValues.playerRound =0;


        break;
    }





    _gameValues.roundEnd = true;
    }


  }


}

