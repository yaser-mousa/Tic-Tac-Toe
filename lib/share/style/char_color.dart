import 'package:flutter/material.dart';

class CharStyle{
  String? char;

  List<Color> colors =[];


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

}