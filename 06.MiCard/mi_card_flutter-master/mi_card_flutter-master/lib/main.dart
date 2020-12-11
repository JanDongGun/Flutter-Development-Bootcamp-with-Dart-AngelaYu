import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.teal,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: double.infinity,
              ),
              CircleAvatar(
                radius: 50,
                backgroundImage: AssetImage('images/GonTran.jpg'),
              ),
              Text(
                'Dong Gon',
                style: TextStyle(
                    fontFamily: 'Pacifico',
                    fontSize: 35,
                    color: Colors.white,
                    fontWeight: FontWeight.bold),
              ),
              Text(
                'Flutter Developer'.toUpperCase(),
                style: TextStyle(
                  fontFamily: 'SourceSansPro',
                  color: Colors.teal.shade100,
                  fontSize: 16,
                  letterSpacing: 2.5,
                  wordSpacing: 5,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: 20,
                width: 200,
                child: Divider(
                  color: Colors.teal.shade100,
                ),
              ),
              Card(
                color: Colors.white,
                margin: EdgeInsets.fromLTRB(50, 15, 50, 0),
                child: ListTile(
                  leading: Icon(
                    Icons.call,
                    color: Colors.teal.shade900,
                  ),
                  title: Text(
                    '+84 123 456 789',
                    style: TextStyle(
                      fontFamily: 'SourceSansPro',
                      color: Colors.teal.shade900,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
              Card(
                color: Colors.white,
                margin: EdgeInsets.fromLTRB(50, 15, 50, 0),
                child: ListTile(
                  leading: Icon(
                    Icons.mail_outline,
                    color: Colors.teal.shade900,
                  ),
                  title: Text(
                    'trannguyendonggon@gmail.com',
                    style: TextStyle(
                      fontFamily: 'SourceSansPro',
                      color: Colors.teal.shade900,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
