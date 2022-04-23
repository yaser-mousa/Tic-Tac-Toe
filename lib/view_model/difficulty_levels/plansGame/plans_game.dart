import '../../../models/game_values.dart';
import '../../find_empty_boxes.dart';
import '../../future _chances_of_winning.dart';

class PlanesGame{
  static PlanesGame? _instance;
  int winingIndex = 0;
  final GameValues _gameValues = GameValues.getInstance();
  final FutureChancesWinning _futureChancesWinning = FutureChancesWinning.getInstance();
  final FindEmptyBoxes _findEmptyBoxes = FindEmptyBoxes.getInstance();

  List<String> playNumbers = ['139567', '931567','713569'];
  List<String> playNumbersTwo = ['139567', '931567','713569'];
  PlanesGame ._();

  static PlanesGame getInstance(){
    _instance??= PlanesGame ._();
    return _instance!;
  }

  int planOne(){
    print('plan 1 ////////////////////////////////////////////////');
    print('plan 1 ////////////////////////////////////////////////');

    _futureChancesWinning.boxesEmptyIndex = _findEmptyBoxes.findEmptyBoxes();

    _futureChancesWinning.checkWining(_gameValues.computerBoxesNumbers);

    winingIndex = _gameValues.winingIndex;
    _gameValues.winingIndex = 0;
    // print('winingIndex == $winingIndex');

      return winingIndex;

  }

  int planTwo(){
    print('plan 2 ////////////////////////////////////////////////');
    print('plan 2 ////////////////////////////////////////////////');
    _futureChancesWinning.boxesEmptyIndex = _findEmptyBoxes.findEmptyBoxes();

    _futureChancesWinning.checkWining(_gameValues.playerOneBoxesNumbers);

    winingIndex = _gameValues.winingIndex;
    _gameValues.winingIndex = 0;

    return winingIndex;
  }

  int planThree(){
    print('plan 3 ////////////////////////////////////////////////');
    print('plan 3 ////////////////////////////////////////////////');

    for (var x=0 ; x<playNumbersTwo[_gameValues.gameCount].length; x++) {
      if(_gameValues.buttonsBooked[int.parse(playNumbersTwo[_gameValues.gameCount][x])-1] ==''){

        return int.parse(playNumbersTwo[_gameValues.gameCount][x]);
      }
      // print(playNumbers[x]);
    }
    return 9;
    }
  }

