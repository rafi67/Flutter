import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Home(),
    );
  }
}

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              children: [
                Container(
                  height: 200,
                  width: 250,
                  decoration: const BoxDecoration(color: Colors.purple),
                  child: const Center(child: Text('Hi')),
                ),
                Container(
                  height: 200,
                  width: 250,
                  decoration: const BoxDecoration(color: Colors.yellow),
                  child: const Text('Rafi'),
                ),
                Container(
                  height: 200,
                  width: 250,
                  decoration: const BoxDecoration(color: Colors.red),
                  child: const Text('Hello World!'),
                ),
                Container(
                  height: 200,
                  width: 250,
                  decoration: const BoxDecoration(color: Colors.green),
                  child: const Text("He's too clever"),
                ),
                Container(
                  height: 200,
                  width: 250,
                  decoration: const BoxDecoration(color: Colors.green),
                  child: const Text("He's too clever"),
                ),
                Container(
                  height: 200,
                  width: 250,
                  decoration: const BoxDecoration(color: Colors.green),
                  child: const Text("He's too clever"),
                ),
                Container(
                  height: 200,
                  width: 250,
                  decoration: const BoxDecoration(color: Colors.green),
                  child: const Text("He's too clever"),
                ),
                Container(
                  height: 200,
                  width: 250,
                  decoration: const BoxDecoration(color: Colors.green),
                  child: const Text("He's too clever"),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

