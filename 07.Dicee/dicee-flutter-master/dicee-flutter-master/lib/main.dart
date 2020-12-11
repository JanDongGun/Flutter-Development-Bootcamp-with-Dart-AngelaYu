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
  int numLeftBtn = 1;
  int numRightBtn = 1;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: [
          Expanded(
            child: FlatButton(
              onPressed: () {
                randomNumber();
              },
              child: Image.asset('images/dice$numLeftBtn.png'),
            ),
          ),
          Expanded(
            child: FlatButton(
              onPressed: () {
                randomNumber();
              },
              child: Image.asset('images/dice$numRightBtn.png'),
            ),
          ),
        ],
      ),
    );
  }

  void randomNumber() {
    setState(() {
      numLeftBtn = Random().nextInt(6) + 1;
      numRightBtn = Random().nextInt(6) + 1;
    });
  }
}
