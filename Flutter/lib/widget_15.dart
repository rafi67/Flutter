import 'package:flutter/material.dart';

class App2 extends StatelessWidget {
  const App2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Image(
                image: AssetImage('images/img.png'),
              ),
              ElevatedButton(onPressed: (){
                Navigator.pop(context);
              }, child: const Text('Back'))
            ],
          ),
        ),
      ),
    );
  }
}
