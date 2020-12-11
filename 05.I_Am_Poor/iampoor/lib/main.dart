import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.amber,
        appBar: AppBar(
          title: Center(
            child: Text('I Am Poor'),
          ),
          backgroundColor: Colors.blueGrey[600],
        ),
        body: Center(
          child: Image(
            image: AssetImage("images/coal.png"),
            width: 300,
            height: 300,
          ),
        ),
      ),
    ),
  );
}
