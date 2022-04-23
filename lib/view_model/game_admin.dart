import 'dart:math';

import 'package:flutter/material.dart';
import 'package:tictactoe/models/game_values.dart';
import 'package:tictactoe/share/componanets/componanets.dart';
import 'package:tictactoe/view_model/player_set_value/set_value_comuter.dart';
import 'package:tictactoe/view_model/player_set_value/set_value_player_one.dart';
import 'package:tictactoe/view_model/player_set_value/set_value_player_two.dart';

import '../share/style/char_color.dart';
import 'check_allow_play.dart';
import 'check_game_end.dart';
import 'check_player_list.dart';
import 'check_win.dart';
import 'computer_random.dart';
import 'difficulty_levels/factory/difficulty_factory.dart';
import 'difficulty_levels/factory/interface_difficulty_factory.dart';
import 'difficulty_levels/interface_difficulty_levels.dart';

class GameAdmin{

 final GameValues _gameValues = GameValues.getInstance();

final SetValuePlayerOne _setValuePlayerOne = SetValuePlayerOne();

final SetValuePlayerTwo _setValuePlayerTwo = SetValuePlayerTwo();

 final SetValuePlayerComputer _setValuePlayerComputer= SetValuePlayerComputer();

final CheckAllowPlay _checkAllowPlay = CheckAllowPlay.getInstance();

final CheckWin _checkWin = CheckWin.getInstance();

 final IsGameEnd isGameEnd = IsGameEnd();

 final CharStyle _charStyle = CharStyle.getInstance();

 final ComputerRandom _computerRandom = ComputerRandom();

   IDifficultyFactory? _difficultyFactory;

 IDifficultyLevels? _difficultyLevel;


static GameAdmin? _instance;
GameAdmin ._();

 static GameAdmin getInstance(){
   _instance??= GameAdmin ._();
   return _instance!;
 }

  Future<void> addNewNumber(int buttonId) async {

    if(_checkAllowPlay.checkAllChecks(buttonId)){

  //// switch

      if(!_gameValues.playWithComputer){
        playWithTwoPlayers(buttonId);
      }else{
        playWithComputer(buttonId);
      }





    }


  }





  void playWithComputer(int buttonId ){
    _difficultyFactory ??= DifficultyFactory();
    _difficultyLevel??= _difficultyFactory!.getDifficulty(_gameValues.difficultNumber);


    switch ( _gameValues.playerRound){
      case 0:
        _setValuePlayerOne.setValue(buttonId);
        if(_gameValues.playerOneBoxesNumbers.length>2){
          _gameValues.isWin =_checkWin.checkForWinningNumbers(_gameValues.playerOneBoxesNumbers);
        }
        _charStyle.addChar(_gameValues.buttonsBooked[buttonId-1], buttonId-1);

       if(!_gameValues.isWin){
         _gameValues.playerRound =1;

       }


        break;

      case 1:
        buttonId = _difficultyLevel!.getNumber();
        _setValuePlayerComputer.setValue(buttonId);
        if(_gameValues.computerBoxesNumbers.length>2){
          _gameValues.isWin =_checkWin.checkForWinningNumbers(_gameValues.computerBoxesNumbers);
        }
        _charStyle.addChar(_gameValues.buttonsBooked[buttonId-1], buttonId-1);

        if(!_gameValues.isWin){
          _gameValues.playerRound =0;
        }

        break;
    }


    if(!_gameValues.isWin){
      _gameValues.gameEnd = isGameEnd.checkGameEnd([]);

      _gameValues.roundEnd = true;
      if(!_gameValues.gameEnd){
      if(_gameValues.playerRound==1){
      playWithComputer(0);
      }

      }
    }
  }

 void playWithTwoPlayers(int buttonId){
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
   }

   if(!_gameValues.isWin){
     _gameValues.gameEnd = isGameEnd.checkGameEnd([]);
     _gameValues.roundEnd = true;
   }
   _charStyle.addChar(_gameValues.buttonsBooked[buttonId-1], buttonId-1);
 }

}

