import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Button(),
    );
  }
}

class Button extends StatefulWidget {
  const Button({Key? key}) : super(key: key);

  @override
  _ButtonState createState() => _ButtonState();
}

class _ButtonState extends State<Button> {
  int num = 0;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          body: Column(
                  children: [
                    Row(
                    children: [
                    RaisedButton(
                      onPressed: (){
                        setState(() {
                          num++;
                        });
                      },
                      child:  Text('$num'),
                      color: Colors.blueAccent,
                      elevation: 30,
                    ),
                    RaisedButton(
                      onPressed: (){

                      },
                      child:  const Text('Button'),
                      color: Colors.blueAccent,
                      elevation: 30,
                    ),
                    FlatButton(
                      onPressed: (){},
                      child: const Text('Flatbutton'),
                      color: Colors.green,
                    ),
                  ],
                ),
                    Switch(
                  onChanged: (IsEnable) {},
                  value: true,
                ),
                    Slider(
                  onChanged: (value){},
                  value: 40,
                  min: 1,
                  max: 100,
                ),
                    const Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Image(
                        //width: 800,
                        height: 400,
                        image: NetworkImage('https://mobcup.b-cdn.net/images/wt/4e93fc03b2d2843fc43b3bc0642375d8.jpg'),
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.all(20.0),
                      child: TextField(
                              decoration: InputDecoration(
                                            labelText: 'Name',
                                            hintText: 'type your name',
                                            border: OutlineInputBorder(),
                                          ),
                              ),
                    ),
                    const Padding(
                      padding: EdgeInsets.all(20.0),
                      child: TextField(
                        obscureText: true,
                              decoration: InputDecoration(
                                            labelText: 'Password',
                                            hintText: 'type your password',
                                            border: OutlineInputBorder(),
                                          ),
                              ),
                    ),
                  ],
                ),
          floatingActionButton: FloatingActionButton(
            onPressed: (){},
            child: const Icon(Icons.home_filled,),
          ),
          ),
    );
  }
}

