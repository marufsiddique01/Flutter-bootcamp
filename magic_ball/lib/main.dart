import 'dart:ui';
import 'dart:math';
import 'package:flutter/material.dart';

void main() {
  return runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.blue[400],
        appBar: AppBar(
          title: Center(
            child: Text('Ask Me Anything'),
          ),
          backgroundColor: Colors.blue[900],
        ),
        body: RollTheBall(),
      ),
    ),
  );
}

class RollTheBall extends StatefulWidget {
  @override
  _RollTheBallState createState() => _RollTheBallState();
}

class _RollTheBallState extends State<RollTheBall> {

  int rollMeBro = 5;


  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: <Widget>[
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(0.0),
              child: FlatButton(
                onPressed: () {
                  setState(() {

                    rollMeBro = Random().nextInt(5) + 1;
                  });
                },
                child: Image(
                  image: AssetImage('images/ball$rollMeBro.png'),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
