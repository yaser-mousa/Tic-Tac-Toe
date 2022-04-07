import 'package:flutter/material.dart';

class TestScreen extends StatelessWidget {
  const TestScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(

        child: Container(
          width: 200,
          height: 200,
          child: Stack(
           children: [
             Container(
               width: 200,
               height: 200,
               color: Colors.blue,
             ),

           Align(
             alignment: Alignment.center,
          child:  Text('0',style: TextStyle(fontSize: 240,  height:1,), ),
           )
           // Align(
           //     alignment:Alignment.topCenter,child: Text('o',style: TextStyle(fontSize: 90),textAlign: TextAlign.start,)),
           ],
          ),
        ),
      ),
    );
  }
}
