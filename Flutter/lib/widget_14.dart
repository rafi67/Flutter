import 'package:flutter/material.dart';

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

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
              }, child: const Text('Back'),),
              const Text('Hello', style: TextStyle(
                fontSize: 20,
                color: Colors.black,
              ),),
            ],
          ),
        ),
      ),
    );
  }
}
