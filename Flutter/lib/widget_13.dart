import 'package:flutter/material.dart';
import 'widget_14.dart';
import 'widget_15.dart';

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
      backgroundColor: Colors.blue,
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children:  [
            const CircleAvatar(
              backgroundImage: AssetImage('images/img.png'),
              radius: 40,
            ),
            const Text(
              'Rafi Siddique',
              style: TextStyle(
                fontSize: 30,
                //fontWeight: FontWeight.bold,
                color: Colors.amber,
                fontFamily: 'Corinthia',
              ),
            ),
            const SizedBox(
              height: 50,
            ),
            const Text(
              'Addresd',
              style: TextStyle(
                fontSize: 30,
                fontFamily: 'Corinthia',
                color: Colors.grey,
              ),
            ),
            const SizedBox(
              height: 20,
              child: Divider(
                thickness: 10,
                color: Colors.black,
              ),
            ),
            Card(
              margin: const EdgeInsets.all(20),
              //margin: EdgeInsets.Symetric(vertical:20, horizontal: 30),
              //margin: EdgeInsets.only(top: , right: , left: , bottom:,),
              child: ListTile(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=> const App()));
                },
                title: const Text('rafisiddique652@gmail.com'),
                leading: const Icon(Icons.email, color: Colors.green,),
              ),
            ),
             Card(
              margin: const EdgeInsets.all(20),
              child: ListTile(
                onTap: (){
                  Navigator.push(context,
                    MaterialPageRoute(builder: (context)=> const App2())
                  );
                },
                title: const Text('01767778364'),
                leading: const Icon(Icons.phone, color: Colors.red,),
              ),
            ),
          ],
        ),
      )
    );
  }
}

