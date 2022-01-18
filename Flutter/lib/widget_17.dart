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
              image: NetworkImage('https://images.pexels.com/photos/799443/pexels-photo-799443.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500'),
              width: double.infinity,
              height: double.infinity,
              fit: BoxFit.cover,
            ),
            Positioned(
              bottom: 20,
              left: 20,
              child: Container(
                decoration: const BoxDecoration(
                  gradient: LinearGradient(
                    colors: [
                      Colors.purple,
                      Colors.white,
                      Colors.green,
                      Colors.black,
                    ],
                  ),
                ),
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

