import 'dart:math';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Scaffold(
      backgroundColor: Colors.red,
      appBar: AppBar(
        title: Center(child: Text("Dicee by Chandan")),
        backgroundColor: Colors.red,
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
  int leftDiceNum=1;
  int rightDiceNum=1;
  void rollDice(){
    setState(() {
      rightDiceNum = Random().nextInt(6)+1;
      leftDiceNum = Random().nextInt(6)+1;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: TextButton(
                child: Image.asset("images/dice$leftDiceNum.png"),
                onPressed: () {
                  rollDice();
                },
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: TextButton(
                child: Image.asset("images/dice$rightDiceNum.png"),
                onPressed: () {
                  rollDice();
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
