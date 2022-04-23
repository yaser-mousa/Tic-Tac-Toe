import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';

class TestAutoTextSize extends StatelessWidget {
  const TestAutoTextSize({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Center(
        child: Column(
          children:  [
            Row(
              children: [
                Expanded(
                  child: Column(
                    children: [
                      AutoSizeText(
                        'hello world i\'',
                        maxLines: 1,
                        style: TextStyle(fontSize: 100),
                      ),
                      AutoSizeText(
                        'hello world i\'',
                        maxLines: 1,
                        style: TextStyle(fontSize: 100),
                      ),
                    ],
                  ),
                ),
                Spacer(),
                Expanded(
                  child: Column(
                    children: [
                      AutoSizeText(
                        'hello world i\'',
                        maxLines: 1,
                        style: TextStyle(fontSize: 100),
                      ),
                      AutoSizeText(
                        'hello world i\'',
                            maxLines: 1,
                        style: TextStyle(fontSize: 100),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Text('hello kkkkk')
          ],
        ),
      ),
    );
  }
}
