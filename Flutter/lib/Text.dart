import 'dart:math';
import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Dice(),
    );
  }
}

class Dice extends StatefulWidget {
  const Dice({Key? key}) : super(key: key);

  @override
  _DiceState createState() => _DiceState();
}

class _DiceState extends State<Dice> {

  int left = 1, middle = 2, right = 3;

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: const Text('DiceApp'),
        centerTitle: true,
        backgroundColor: Colors.amberAccent,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Row(
            children: <Widget>[
              Expanded(
                child: Image(
                  image: AssetImage('images/dice$left.png'),
                )
              ),
              Expanded(
                child: Image(
                  image: AssetImage('images/dice$middle.png'),
                )
              ),
              Expanded(
                child: Image(
                  image: AssetImage('images/dice$right.png'),
                )
              ),
            ],
          ),
          ElevatedButton(
            onPressed: () {
              setState(() {
                left = Random().nextInt(6)+1;
                middle = Random().nextInt(6)+1;
                right = Random().nextInt(6)+1;
              });
            },
            child: const Text('Change', style: TextStyle(color: Colors.white),),
            style: ElevatedButton.styleFrom(
              primary: Colors.amber,
              onPrimary: Colors.amber,
            ),
          )
        ],
      ),
    );
  }
}
