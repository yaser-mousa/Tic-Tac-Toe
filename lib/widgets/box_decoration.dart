import 'package:flutter/material.dart';



BoxDecoration TicBoxDecoration(){
  return BoxDecoration(
      borderRadius: BorderRadius.circular(10),
      boxShadow:  const [
        BoxShadow(
          color: Colors.purpleAccent,
          offset: Offset(
            0,
            1.0,
          ),
          blurRadius: 2.0,
          spreadRadius: 1.0,
        ),
      ]
  );
}


