import 'package:flutter/material.dart';

import '../share/style/themedata.dart';
import '../widgets/body_widget.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: backGroundColorScaffold(),
      child: const Scaffold(
        backgroundColor: Colors.transparent,
        body: SafeArea(child: BodyWidget()),
      ),


    );
  }
}
