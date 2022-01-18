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
      appBar: AppBar(
        backgroundColor: Colors.purple,
        title: const Text('Home'),
        centerTitle: true,
      ),
      backgroundColor: Colors.blue,
      body: Column(
        children: [
          Expanded(
            flex: 1,
            child: Container(
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              color: Colors.yellow,
              child: const Center(child: Text('Step1', style: TextStyle(fontSize: 22, color: Colors.white,),),),
            ),
          ),
          Expanded(
            flex: 3,
            child: Container(
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              color: Colors.red,
              child: const Center(child: Text('Step2', style: TextStyle(fontSize: 22, color: Colors.white,),),),
            ),
          ),
          Expanded(
            flex: 1,
            child: Container(
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              color: Colors.green,
              child: const Center(child: Text('Step3', style: TextStyle(fontSize: 22, color: Colors.white,),),),
            ),
          ),
        ],
      )
    );
  }
}

