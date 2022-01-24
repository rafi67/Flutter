import 'package:flutter/material.dart';

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
        title: const Text('Horizontal & Vertical ListView'),
        backgroundColor: Colors.cyan,
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            SizedBox(
              height: 150,
              child: ListView.builder(
                itemCount: 20,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index)=>Container(
                  height: 150,
                  width: 150,
                  margin: const EdgeInsets.all(10),
                  child: Center(
                    child:  Text('card $index',
                    style: const TextStyle(color: Colors.white),),
                  ),
                  color: Colors.purple,
                ),
              ),
            ),
            Flexible(
              child: ListView.builder(
                itemCount: 30,
                physics: const NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemBuilder: (context, index)=>ListTile(
                  title: Text('List $index'),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
