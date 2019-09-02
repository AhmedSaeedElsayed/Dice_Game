import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Scaffold(
      backgroundColor: Colors.amber,
      appBar: AppBar(
        backgroundColor: Color(0xff032535),
        title: Text(
          "Dice Game",
          style: TextStyle(
              fontSize: 30.0, color: Colors.white, fontFamily: "Lobster"),
        ),
      ),
      body: DicePage(),
    ),
  ));
}

class DicePage extends StatefulWidget {
  @override
  _DicePageState createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int LeftDiceNumber = 1;
  int RightDiceNumber = 1;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(top: 80.0),
            child: InkWell(
              onTap: () {
                setState(() {
                  LeftDiceNumber = Random().nextInt(6) + 1;
                  RightDiceNumber = Random().nextInt(6) + 1;
                });
              },
              child: Icon(
                Icons.loop,
                color: Colors.white,
                size: 110.0,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 60.0),
            child: Row(
              children: <Widget>[
                Expanded(
                    child: InkWell(
                        onTap: () {
                          setState(() {
                            LeftDiceNumber = Random().nextInt(6) + 1;
                          });
                        },
                        child: Image.asset("images/$LeftDiceNumber.png"))),
                Expanded(
                    child: InkWell(
                        onTap: () {
                          setState(() {
                            RightDiceNumber = Random().nextInt(6) + 1;
                          });
                        },
                        child: Image.asset("images/$RightDiceNumber.png"))),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
