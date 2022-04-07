import 'package:flutter/material.dart';

import '../share/style/themedata.dart';

class ChoiceGame extends StatelessWidget {
  const ChoiceGame({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: backGroundColorScaffold(),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: SafeArea(
          child: Column(

          ),
        ),
      ),
    );
  }
}
