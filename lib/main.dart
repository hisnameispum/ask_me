import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.blue,
        appBar: AppBar(
          backgroundColor: Colors.blue,
          title: Text("Ask Me"),
        ),
        body: AskPage(),
      ),
    ),
  );
}

class AskPage extends StatefulWidget {
  @override
  _AskPageState createState() => _AskPageState();
}

int pressed() {
  return Random().nextInt(5) + 1;
}

class _AskPageState extends State<AskPage> {
  int indexNum = 1;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: <Widget>[
          Expanded(
            child: FlatButton(
              onPressed: () {
                setState(() {
                  indexNum = pressed();
                });
              },
              child: Image(
                image: AssetImage("images/ball$indexNum.png"),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
