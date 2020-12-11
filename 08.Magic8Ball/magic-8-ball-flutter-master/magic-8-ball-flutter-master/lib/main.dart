import 'package:flutter/material.dart';
import 'dart:math';

void main() => runApp(
      MaterialApp(
        home: Scaffold(
          backgroundColor: Colors.cyan,
          body: SafeArea(
            child: MyApp(),
          ),
        ),
      ),
    );

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int randomBtn = 1;

  void random() {
    setState(() {
      randomBtn = Random().nextInt(5) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        SizedBox(
          width: double.infinity,
          height: 100,
        ),
        Text(
          'Ask me Anything',
          style: TextStyle(
            fontSize: 30,
            color: Colors.white,
          ),
        ),
        Expanded(
          child: FlatButton(
            onPressed: () {
              random();
            },
            child: Image.asset('images/ball$randomBtn.png'),
          ),
        ),
      ],
    );
  }
}
