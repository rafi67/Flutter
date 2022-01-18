import 'dart:async';
import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

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

 /* StreamSubscription? subscription;

  @override
  dispose() {
    subscription!.cancel();
    super.dispose();
  }*/

  Future checkConnection()async {
    //dispose();
    var connectivityResult = await(Connectivity().checkConnectivity());
    if(connectivityResult==ConnectivityResult.mobile) {
      Fluttertoast.showToast(
          msg: 'Connected with mobile',
          toastLength: Toast.LENGTH_SHORT,
          gravity: ToastGravity.BOTTOM,
          timeInSecForIosWeb: 1,
          backgroundColor: Colors.purple,
          textColor: Colors.white,
          fontSize: 16.0
      );
    }
    else if(connectivityResult==ConnectivityResult.wifi) {
      Fluttertoast.showToast(
          msg: 'Connected with Wi-fi',
          toastLength: Toast.LENGTH_SHORT,
          gravity: ToastGravity.BOTTOM,
          timeInSecForIosWeb: 1,
          backgroundColor: Colors.purple,
          textColor: Colors.white,
          fontSize: 16.0
      );
    }
    else {
      Fluttertoast.showToast(
          msg: 'Network Error',
          toastLength: Toast.LENGTH_SHORT,
          gravity: ToastGravity.BOTTOM,
          timeInSecForIosWeb: 1,
          backgroundColor: Colors.purple,
          textColor: Colors.white,
          fontSize: 16.0
      );
    }
  }

  @override
  Widget build(BuildContext context) {

   /* initState() {
      subscription = Connectivity().onConnectivityChanged.listen((event) {
        f.checkConnection();
      });
    }*/

    //f.checkConnection();

    return Scaffold(
      appBar: AppBar(
        title: const Text('Home'),
        backgroundColor: Colors.purpleAccent,
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            OutlinedButton(onPressed: checkConnection, child: const Text('Check Connection'),)
          ],
        ),
      ),
    );
  }
}

