class GameValues{
  List<String> buttonsBooked = ['', '', '','', '', '','', '', '', ];
  List<int> playerOneNumbers = [];
  List<int> playerTwoNumbers = [];
  String playerOneChar = 'o';
  String playerTwoChar = 'x';
  String yasserChar = 'x';
  List<int> yasserNumbers =[];
  int playerRound = 0;
  bool roundEnd = true;
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
}