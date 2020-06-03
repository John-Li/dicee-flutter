import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          title: Text('Dicee'),
          backgroundColor: Colors.red,
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

class _DicePageState extends State<DicePage> {
  int leftDIceNumber = 1;
  int rightDIceNumber = 1;

  int generateRandomNumber() {
    return Random().nextInt(6) + 1;
  }

  void changeDiceFace() {
    setState(() {
      leftDIceNumber = generateRandomNumber();
      rightDIceNumber = generateRandomNumber();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: <Widget>[
          Expanded(
            child: FlatButton(
              child: Image.asset('images/dice$leftDIceNumber.png'),
              onPressed: () {
                changeDiceFace();
              },
            ),
          ),
          Expanded(
            child: FlatButton(
              child: Image.asset('images/dice$rightDIceNumber.png'),
              onPressed: () {
                changeDiceFace();
              },
            ),
          ),
        ],
      ),
    );
  }
}
