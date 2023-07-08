import 'dart:math';
import 'package:flutter/material.dart';

void main() {
  return runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.blue,
        appBar: AppBar(
          title: Text('Dicee'),

          backgroundColor: Colors.green,
        ),
        body: DicePage(),
      ),
    ),
  );
}

class DicePage extends StatefulWidget {
  const DicePage({super.key});

  @override
  State<DicePage> createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {

  int leftDiceNumber = 1;
  int rightDiceNumber = 1;

  void changeDiceFace(){
    setState(() {
      leftDiceNumber = Random().nextInt(6)+1;
      rightDiceNumber = Random().nextInt(6)+1;
    });
  }

  @override
  Widget build(BuildContext context) {


    return Center(
      child: Row(
        children: <Widget>[
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: TextButton(
                  onPressed: () {
                    changeDiceFace();
                    // print("Left Button Pressed $leftDiceNumber");
              },
                  child: Image.asset('images/dice$leftDiceNumber.png')),
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: TextButton(
                  onPressed: () {
                    changeDiceFace();
                    // print("Right Button Pressed $rightDiceNumber");
                  },
                  child: Image.asset('images/dice$rightDiceNumber.png')),
            ),
          )
        ],
      ),
    );
  }
}

