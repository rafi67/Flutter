import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.transparent,
            bottom: const TabBar(
                tabs: [
                  Tab(icon: Icon(Icons.directions_car)),
                  Tab(icon: Icon(Icons.directions_transit)),
                  Tab(icon: Icon(Icons.directions_bike)),
            ],
            ),
            title: const Text('Pathaw'),
            centerTitle: true,
          ),
          body: const TabBarView(
            children: [
              Icon(Icons.directions_car, size: 200, color: Colors.grey),
              Icon(Icons.directions_transit, size: 200, color: Colors.purple),
              Icon(Icons.directions_bike, size: 200, color: Colors.red),
            ],
          ),
        ),
      ),
    );
  }
}
