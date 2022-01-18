import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  bool value = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home'),
        centerTitle: true,
        backgroundColor: Colors.purple,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            value=!value;
          });
        },
        child: const Icon(Icons.play_arrow_outlined, size: 50, color: Colors.brown,),
      ),
      body: Center(
        child: AnimatedContainer(
          height: value==false? 50 :600,
          width: value==false? 30:500,
          color: Colors.red,
          duration: const Duration(seconds: 20,),
          child: const CircleAvatar(
            backgroundColor: Colors.yellowAccent,
            radius: 20,
            child: CircleAvatar(
              radius: 200,
              backgroundImage: AssetImage('images/img.png'),
            ),
          ),
        ),
      ),
    );
  }
}
