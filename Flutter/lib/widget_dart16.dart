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
      body: SafeArea(
        child: Stack(
          children: [
           const Image(
             image: NetworkImage('https://cdn.wallpapersafari.com/20/87/lbrBWU.jpg'),
             width: double.infinity,
             height: double.infinity,
             fit: BoxFit.cover,
           ),
            Positioned(
              bottom: 20,
              left: 20,
              child: Container(
                width: MediaQuery.of(context).size.width,
                child: Column(
                  children: [
                    const Text('Iphone 13 50% off', style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      color: Colors.teal,
                    ),
                    ),
                    Row(
                      children: [
                        const SizedBox(
                          width: 90,
                        ),
                        ActionChip(
                          onPressed: (){}, label: const Text('Buy', style: TextStyle(color: Colors.white),),
                          backgroundColor: Colors.red,
                        ),
                        const SizedBox(
                          width: 20,
                        ),
                        ActionChip(
                          onPressed: (){}, label: const Text('Select', style: TextStyle(color: Colors.white),),
                          backgroundColor: Colors.blue,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

