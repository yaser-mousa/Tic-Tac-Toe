import 'package:flutter/material.dart';
import 'package:tictactoe/models/game_values.dart';
import 'package:tictactoe/share/componanets/componanets.dart';
import 'package:tictactoe/view_model/player_set_value/set_value_player_one.dart';
import 'package:tictactoe/view_model/player_set_value/set_value_player_two.dart';

import 'check_allow_play.dart';
import 'check_game_end.dart';
import 'check_player_list.dart';
import 'check_win.dart';

class GameAdmin{

 final GameValues _gameValues = GameValues.getInstance();

final SetValuePlayerOne _setValuePlayerOne = SetValuePlayerOne();

final SetValuePlayerTwo _setValuePlayerTwo = SetValuePlayerTwo();

final CheckAllowPlay _checkAllowPlay = CheckAllowPlay.getInstance();

final CheckWin _checkWin = CheckWin.getInstance();

 final IsGameEnd isGameEnd = IsGameEnd();

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
      if(_gameValues.playerOneBoxesNumbers.length>2){
        _gameValues.isWin =_checkWin.checkForWinningNumbers(_gameValues.playerOneBoxesNumbers);
      }
        _gameValues.playerRound =1;



        break;

      case 1:
     _setValuePlayerTwo.setValue(buttonId);
     if(_gameValues.playerTwoBoxesNumbers.length>2){
       _gameValues.isWin =_checkWin.checkForWinningNumbers(_gameValues.playerTwoBoxesNumbers);
     }
     _gameValues.playerRound =0;


        break;
    }//// switch




   _gameValues.gameEnd = isGameEnd.checkGameEnd([]);



    _gameValues.roundEnd = true;
    }


  }


}

