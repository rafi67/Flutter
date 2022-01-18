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
  bool _switch= false;
  ThemeData dark= ThemeData(brightness: Brightness.dark);
  ThemeData light= ThemeData(brightness: Brightness.light);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: _switch?dark : light,
      home: Scaffold(
        appBar: AppBar(
          title: const Text('School & College', style: TextStyle(fontWeight: FontWeight.bold, color: Colors.orange, fontSize: 25),),
          centerTitle: true,
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              const Icon (Icons.lightbulb, size: 60,color: Colors.purple),
              const Text("Switch", style : TextStyle(fontWeight: FontWeight.bold,color: Colors.green, fontSize: 35,
              ),
              ),
              Switch(value: _switch, onChanged: (_newvalue){
                setState(() {
                  _switch = _newvalue;
                });
              },
              ),

            ],
          ),
        ),
      ),
    );
  }
}



