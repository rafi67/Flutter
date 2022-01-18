import 'package:flutter/material.dart';

class SimpleApp extends StatelessWidget {

  const SimpleApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.purple,
          title: const Text('Rafi'),
          centerTitle: true,
        ),
        body: const Center(
          child: Image(
            image:
            NetworkImage('https://media.gettyimages.com/photos/scarlet-macaws-picture-id157375891?s=612x612'),
          ),
        ),
      ),
    );
  }

}