//import 'package:f/animated.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
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
  final spinkit = SpinKitFadingCircle(
    itemBuilder: (BuildContext context, int index) {
      return DecoratedBox(
      decoration: BoxDecoration(
        color: index.isEven ? Colors.deepOrange : Colors.amber,
      ),
      );
    },
  );
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SpinKitSpinningLines(color: Colors.blue, size: 200, duration: Duration(milliseconds: 1000),),
    );
  }
}

