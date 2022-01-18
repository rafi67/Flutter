import 'package:flutter/material.dart';

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
       appBar: AppBar(
         backgroundColor: Colors.blueGrey,
         title: const Text('Rafi'),
         centerTitle: true,
       ),
        body: const Center(
          child: Image(
            image: AssetImage('images/imf.jpg'),
          ),
        ),
      ),
    );
  }

}