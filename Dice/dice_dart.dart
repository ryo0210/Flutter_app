import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black12,
        appBar: AppBar(
          title: Text('Dicee'),
          backgroundColor: Colors.black12,
        ),
        body: DicePage(),
      ),
    ),
  );
}

class DicePage extends StatefulWidget {
  @override
  _DicePageState createState() => _DicePageState();
}

// stful. ユーザーの操作によって変化する場合

class _DicePageState extends State<DicePage> {
  int leftDiceNumber = 1;
  int rightDiceNumber = 1;

  void changeDiceFace() {
    setState(() {
      leftDiceNumber = Random().nextInt(6) + 1;
      rightDiceNumber = Random().nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: <Widget>[
          Expanded(
            child: FlatButton(
              onPressed: () {
                changeDiceFace();
                print('left bottom pressed');
              },
              child: Image.asset('images/dice$rightDiceNumber.png'),
            ),
          ),
          Expanded(
            child: FlatButton(
              onPressed: () {
                // setstateメソッドで状態を更新していることを具体的に指定する必要がある.
                changeDiceFace();
              },
              child: Image.asset('images/dice$leftDiceNumber.png'),
            ),
          ),
        ],
      ),
    );
  }
}
