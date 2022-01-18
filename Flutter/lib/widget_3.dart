import 'package:flutter/material.dart';

class App2 extends StatelessWidget {

  const App2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.red,
          title: const Text('Rafi'),
          centerTitle: true,
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Image.asset('images/imf.jpg'),
              Image.asset('images/img1.jpg'),
              Image.asset('images/img.png'),
              Image.asset('images/img_1.png'),
            ],
          ),
        ),
      ),
    );
  }

}