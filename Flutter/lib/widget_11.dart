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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.greenAccent,
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: const Text('Gmail'),
        centerTitle: true,
      ),
     drawer: Drawer(
       child: ListView(
        children: const [
          UserAccountsDrawerHeader(
            accountName: Text('Rafi Siddique'),
            accountEmail: Text('rafisiddique652@gmail.com'),
            currentAccountPicture: CircleAvatar(
              backgroundImage: AssetImage('images/img.png'),
            ),
          ),
        ],
       ),
     ),
    );
  }
}

