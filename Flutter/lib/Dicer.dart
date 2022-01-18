import 'dart:math';

import 'package:flutter/material.dart';


class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Dicer(),
    );
  }
}

class Dicer extends StatefulWidget {
  const Dicer({Key? key}) : super(key: key);

  @override
  _DicerState createState() => _DicerState();
}

class _DicerState extends State<Dicer> {

  int leftDiceNumber = 1;
  int rightDiceNumber = 6;
  int ls = 3;

  void dice_changeFace() {
    setState(() {
      leftDiceNumber = Random().nextInt(6)+1;
    });
  }

  void right () {
    setState(() {
      rightDiceNumber = Random().nextInt(6)+1;
    });
  }

  void middle() {
    setState(() {
      ls = Random().nextInt(6)+1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.purple,
      appBar: AppBar(
        title: const Text('Dice'),
        backgroundColor: Colors.white70,
        centerTitle: true,
      ),
      body: Center(
        child: Row(
          children: <Widget>[
            Expanded(
              child: FlatButton(
                onPressed: dice_changeFace,
                child: Image(
                  image: AssetImage('images/dice$leftDiceNumber.png'),
                ),
              ),
            ),
            Expanded(
              child: FlatButton(
                onPressed: middle,
                child: Image(
                  image: AssetImage('images/dice$ls.png'),
                ),
              ),
            ),
            Expanded(
              child: FlatButton(
                onPressed: right,
                child: Image(
                  image: AssetImage('images/dice$rightDiceNumber.png'),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
