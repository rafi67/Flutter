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
        child: SingleChildScrollView(
          child: Center(
            child: Column(
              children: [
                Container(
                  height: MediaQuery.of(context).size.height/4,
                  width: MediaQuery.of(context).size.width/2,
                  decoration: const BoxDecoration(color: Colors.green),
                  //color: Colors.green,
                  child: const Center(child: Text("He's too clever"),),
                ),
                Container(
                  height: MediaQuery.of(context).size.height/4,
                  width: MediaQuery.of(context).size.width/2,
                  decoration: const BoxDecoration(color: Colors.red),
                  child: const Center(child: Text("He's too clever"),),
                ),
                Container(
                  height: MediaQuery.of(context).size.height/4,
                  width: MediaQuery.of(context).size.width/2,
                  decoration: const BoxDecoration(color: Colors.yellow),
                  child: const Center(child: Text("He's too clever"),),
                ),
                Container(
                  height: MediaQuery.of(context).size.height/4,
                  width: MediaQuery.of(context).size.width/2,
                  decoration: const BoxDecoration(color: Colors.purple),
                  child: const Center(child: Text("He's too clever"),),
                ),
                Container(
                  height: MediaQuery.of(context).size.height/4,
                  width: MediaQuery.of(context).size.width/2,
                  decoration: const BoxDecoration(color: Colors.grey),
                  child: const Center(child: Text("He's too clever"),),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

