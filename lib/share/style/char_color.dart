import 'package:flutter/material.dart';

class CharStyle{
  String? char;
  static CharStyle? instance;
  List<Color> colors =[];
   CharStyle ._();

 static CharStyle getInstance(){
    instance??= CharStyle ._();
    return instance!;
  }



  void addChar(String char,int index){

    this.char = char;
    if(char=='x'){
      colors[index] = Colors.purpleAccent;
    }else{

      colors[index]= Colors.lightGreen;
    }


  }

  List<Color> getColors(){
    // this.char =char;

    if(colors.isEmpty){
      colors =  [Colors.red, Colors.red, Colors.red, Colors.red, Colors.red, Colors.red, Colors.red, Colors.red, Colors.red];
      return colors;

    }



    return colors;


  }


  Color colorForHeadPlayers(String char){
    if(char=='x'){
     return Colors.purpleAccent;
    }else{

      return Colors.lightGreen;
    }
  }

}