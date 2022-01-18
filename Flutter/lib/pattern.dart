import 'package:flutter/material.dart';
import 'login.dart';

class P extends StatelessWidget {
  const P({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Page(),
    );
  }
}

class Page extends StatefulWidget {
  const Page({Key? key}) : super(key: key);

  @override
  _PageState createState() => _PageState();
}

class _PageState extends State<Page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home'),
        backgroundColor: Colors.amber,
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          children: [
            Switch(
              onChanged: (isEnable) {},
              value: true,
            ),
            Slider(value: 40, onChanged: (value){}, min: 1, max: 100,),
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Image(
                height: 300,
                width: 400,
                image: NetworkImage('https://images.unsplash.com/photo-1562155847-c05f7386b204?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MXx8bmV3JTIwd2FsbHBhcGVyfGVufDB8fDB8fA%3D%3D&w=1000&q=80'),
              ),
            ),

          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            Navigator.push(context, MaterialPageRoute(builder: (context)=> const MyApp2()),);
          });
        },
        child: const Icon(Icons.arrow_back_rounded),
      ),
    );
  }
}

