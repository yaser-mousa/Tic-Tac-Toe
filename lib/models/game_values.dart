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
  int computerRound = 0;
  bool roundEnd = true;
  bool gameEnd =false;
  bool isWin = false;
  int bookedBoxesCount =0;
  int difficultNumber = 0;
  int winingIndex = 0;
  int gameCount = 0;
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
    gameCount++;
    playerOneBoxesNumbers = [];
    playerTwoBoxesNumbers = [];
    computerBoxesNumbers =[];
    if(!isWin){
      if(playerRound ==0){
        playerRound = 1;
      }else{
        playerRound = 0;
      }
    }
    // print("updateValuesForNewGame PlayRound == ${playerRound}");
    isWin = false;
    bookedBoxesCount=0;
    gameEnd = false;
    roundEnd = true;

  }
}