import 'package:flutter/material.dart';
//import 'widget_1.dart';
//import 'widget2.dart';
//import 'widget_3.dart';
//import 'widget_4.dart';
//import 'widget_5.dart';
//import 'widget_6.dart';
//import 'widget_7.dart';
//import 'widget_8.dart';
//import 'widget_9.dart';
//import 'widget_10.dart';
//import 'widget_11.dart';
//import 'widget_12.dart';
//import 'button.dart';
//import 'login.dart';
//import 'widget_13.dart';
//import 'widget_dart16.dart';
//import 'Dicer.dart';
//import 'form.dart';
//import 'widget_13.dart';
//import 'conectivity.dart';
//import 'switch.dart';
//import 'animated.dart';
//import 'tab.dart';
//import 'var&hor.dart';
//import 'spin.dart';
import 'ui/home.dart';
import 'package:flutter/services.dart';
/*void main() {
  runApp(MaterialApp(
    home: Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purple,
        title: const Text('Rafi'),
        centerTitle: true,
      ),
      body: const Center(
        child: Image(
          image:
          NetworkImage('https://media.gettyimages.com/photos/scarlet-macaws-picture-id157375891?s=612x612'),
        ),
      ),
    ),
  ));
}*/

void main(){
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
        SystemUiOverlayStyle(statusBarColor: Colors.transparent)
    );
    return MaterialApp(
      home: HomePage(),
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Colors.cyan,
        accentColor: Colors.amber,
      ),
    );
  }
}