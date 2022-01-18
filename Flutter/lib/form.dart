import 'package:flutter/material.dart';
import 'Text2.dart';

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

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
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              FloatingActionButton(onPressed: (){
                setState(() {
                  Navigator.push(context, 
                  MaterialPageRoute(builder: (context)=> const MyApp()));
                });
              },
                child: const Icon(Icons.arrow_back),
              ),
              Container(
                color: Colors.blue,
                child:  Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Row(
                    children: <Widget>[
                      const Icon(Icons.arrow_back, color: Colors.white,),
                      const Padding(
                        padding: EdgeInsets.symmetric(horizontal: 20),
                        child: Text(
                            'Contact Details',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: Container(
                          decoration: BoxDecoration(
                            border:  Border.all(
                              color: Colors.white,
                              width: 2,
                            ),
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              const Positioned(
                top: -10,
                left: 10,
                child: Text('District *', style: TextStyle(
                  backgroundColor: Colors.white,
                  color: Colors.black,
                  fontSize: 15,
                ),),
              ),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Container(
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Colors.black,
                      width: 2,
                    ),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Stack(
                    overflow: Overflow.visible,
                    children: const <Widget>[
                      TextField(
                        decoration: InputDecoration(
                          border: InputBorder.none,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              const Positioned(
                top: -10,
                left: 10,
                child: Text('Thana *', style: TextStyle(
                  backgroundColor: Colors.white,
                  color: Colors.black,
                  fontSize: 15,
                ),),
              ),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Container(
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Colors.black,
                      width: 2,
                    ),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Stack(
                    overflow: Overflow.visible,
                    children: const <Widget>[
                      TextField(
                        decoration: InputDecoration(
                          border: InputBorder.none,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              const Positioned(
                top: -10,
                left: 10,
                child: Text('Present Address *', style: TextStyle(
                  backgroundColor: Colors.white,
                  color: Colors.black,
                  fontSize: 15,
                ),),
              ),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Container(
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Colors.black,
                      width: 2,
                    ),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Stack(
                    overflow: Overflow.visible,
                    children: const <Widget>[
                      TextField(
                        decoration: InputDecoration(
                          border: InputBorder.none,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              const Positioned(
                top: -10,
                left: 10,
                child: Text('Permanent Address *', style: TextStyle(
                  backgroundColor: Colors.white,
                  color: Colors.black,
                  fontSize: 15,
                ),),
              ),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Container(
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Colors.black,
                      width: 2,
                    ),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Stack(
                    overflow: Overflow.visible,
                    children: const <Widget>[
                      TextField(
                        decoration: InputDecoration(
                          border: InputBorder.none,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              const Positioned(
                top: -10,
                left: 10,
                child: Text('Street/Vill *', style: TextStyle(
                  backgroundColor: Colors.white,
                  color: Colors.black,
                  fontSize: 15,
                ),),
              ),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Container(
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Colors.black,
                      width: 2,
                    ),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Stack(
                    overflow: Overflow.visible,
                    children: const <Widget>[
                      TextField(
                        decoration: InputDecoration(
                          border: InputBorder.none,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              const Positioned(
                top: -10,
                left: 10,
                child: Text('NID Number *', style: TextStyle(
                  backgroundColor: Colors.white,
                  color: Colors.black,
                  fontSize: 15,
                ),),
              ),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Container(
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Colors.black,
                      width: 2,
                    ),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Stack(
                    overflow: Overflow.visible,
                    children: const <Widget>[
                      TextField(
                        decoration: InputDecoration(
                          border: InputBorder.none,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              const Positioned(
                top: -10,
                left: 10,
                child: Text('Phone Number *', style: TextStyle(
                  backgroundColor: Colors.white,
                  color: Colors.black,
                  fontSize: 15,
                ),),
              ),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Container(
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Colors.black,
                      width: 2,
                    ),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Stack(
                    overflow: Overflow.visible,
                    children: const <Widget>[
                      TextField(
                        decoration: InputDecoration(
                          border: InputBorder.none,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              FlatButton(onPressed: (){}, color: Colors.green, child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: <Widget>[
                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 8),
                    child: Text('all Mobile number', style: TextStyle(
                      color: Colors.black,
                    ),),
                  ),
                  Container(
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Colors.red,
                        width: 1,
                      ),
                      borderRadius: BorderRadius.circular(5),
                    ),
                    child: const Icon(Icons.add_call),
                  ),
                ],
              )),
            ],
          ),
        ),
      ),
    );
  }
}

