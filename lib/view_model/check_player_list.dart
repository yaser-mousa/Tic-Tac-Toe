import 'package:flutter/foundation.dart';

class CheckPlayerList{
  static CheckPlayerList? _instance;
  List<int>? playerValues;
  CheckPlayerList ._();
  List<int>? repetition;

 static CheckPlayerList getInstance(){
    _instance??= CheckPlayerList ._();
    return _instance!;
  }

  void setListValue(List<int> playerValues){
    this.playerValues = playerValues;
  }

  void bigToSmall(){
   int max;
   for(int x = 0; x<playerValues!.length; x++){
     max = playerValues![x];
     for(int count = x; count<playerValues!.length; count++){
       int temp;
       if(max < playerValues![count]){
         temp = playerValues![count];
         playerValues![count] = playerValues![x];
         playerValues![x] = temp;
         max = temp;
       }
     }
   }


  }





}