import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.white70,
        appBar: AppBar(
          title: Text('I am Rich'),
          backgroundColor: Colors.blue[300],
        ),
        body: Center(
          child: Image(
            image: AssetImage('image/diamond.png'),
          ),
        ),
      ),
    ),
  );
}
