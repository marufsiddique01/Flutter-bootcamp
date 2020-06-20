import 'package:flutter/material.dart';



void main() {
  runApp(MaterialApp(
    home: Scaffold(
      backgroundColor: Colors.pink[100],
      appBar: AppBar(
        backgroundColor: Colors.purple[900],
        title: Center(child: Text('I am Poor')),
      ),
      body: Center(
          child:  Image.asset('images/poor.jpg')),
      floatingActionButton: RaisedButton(
        onPressed: () {},
        child: Text('Support me'),
      ),
    ),
  ));
}
