class GameValues{
  List<String> buttonsBooked = List<String>.filled(9, '', growable: true);
  //['', '', '','', '', '','', '', ''];
  List<int> playerOneBoxesNumbers = [];
  List<int> playerTwoBoxesNumbers = [];
  String playerOneChar = 'o';
  String playerTwoChar = 'x';
  String yasserChar = 'x';
  List<int> computerBoxesNumbers =[];
  int playerRound = 0;
  bool roundEnd = true;
  bool gameEnd =false;
  bool isWin = false;
  int bookedBoxesCount =0;
  static bool _playWithComputer =true;
  static GameValues? _instance;

  GameValues ._();

  static void _setPlayWithComputer({bool? playWithComputer}){
    if(playWithComputer!= null){
      _playWithComputer = playWithComputer;

    }
  }

  get playWithComputer => _playWithComputer;

  static GameValues getInstance ({bool? playWithComputer}){
    _setPlayWithComputer(playWithComputer: playWithComputer);
    if(_instance==null){
      _instance = GameValues ._();

      return _instance!;
    }



    return _instance!;
  }


  void changeCharsForPlayers(){
    String temp;
    temp = playerOneChar;
    playerOneChar = playerTwoChar;
    playerTwoChar = temp;
    yasserChar = temp;
  }

  void updateValuesForNewGame(){
    buttonsBooked = List<String>.filled(9, '', growable: true);
    playerOneBoxesNumbers = [];
    playerTwoBoxesNumbers = [];
    computerBoxesNumbers =[];
     isWin = false;
    bookedBoxesCount=0;
    gameEnd = false;
  }
}