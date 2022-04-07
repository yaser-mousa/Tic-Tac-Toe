import 'package:flutter/material.dart';

ThemeData themeData = ThemeData(
  primarySwatch: Colors.amber,
  //scaffoldBackgroundColor: Colors.blue
);

BoxDecoration backGroundColorScaffold(){
  return  const BoxDecoration(
      gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [Colors.purple, Colors.orange])
  );
}