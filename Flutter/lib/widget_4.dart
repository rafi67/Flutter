import 'package:flutter/material.dart';

class A extends StatelessWidget {

  const A({Key? key}) : super(key: key);

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
    return const Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: CircleAvatar(
          radius: 210,
          backgroundColor: Colors.green,
          child: Center(
              child: CircleAvatar(
              radius: 200,
              backgroundImage: NetworkImage('https://cdn.pixabay.com/photo/2015/04/23/22/00/tree-736885__480.jpg'),
            ),
          ),
        ),
      ),
    );
  }
}