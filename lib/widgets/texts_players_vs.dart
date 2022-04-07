import 'package:flutter/material.dart';

class PlayerVsYasser extends StatelessWidget {
  const PlayerVsYasser({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children:  [
          Column(
            children: const [
              Text('o' , style: TextStyle(fontSize: 60,height: 0.5, color: Colors.lightGreen),),
              Text('Player',style: TextStyle(fontSize: 20, color: Colors.green),),
            ],
          ),
          const SizedBox(width: 30,),
          const Text('VS',style: TextStyle(fontSize: 30,height: 0.5, color: Colors.blue),),
          const SizedBox(width: 30,),
          Column(
            children:  [
              Text('x' , style: TextStyle(fontSize: 60,height: 0.5, color: Colors.purpleAccent),),
              Text('Ya',style: TextStyle(fontSize: 20, color: Colors.deepPurple),),
            ],
          ),
        ],
      ),
    );
  }
}
