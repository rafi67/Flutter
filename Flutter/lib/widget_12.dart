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
      backgroundColor: Colors.greenAccent,
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: const Text('Gmail'),
        centerTitle: true,
      ),
      drawer: Drawer(
        child: ListView(
          children: const [
            UserAccountsDrawerHeader(
              accountName: Text('Rafi Siddique'),
              accountEmail: Text('rafisiddique652@gmail.com'),
              currentAccountPicture: CircleAvatar(
                backgroundImage: AssetImage('images/img.png'),
              ),
            ),
            ListTile(
              title: Text('Inbox'),
              //onTap: (){},
              leading: Icon(Icons.inbox),
            ),
            ListTile(
              title: Text('Promotion'),
              //onTap: (){},
              leading: Icon(Icons.tag),
            ),
            ListTile(
              title: Text('Promotion'),
              //onTap: () {},
              leading: Icon(Icons.lock_clock),
            ),
            ListTile(
              title: Text('Spam'),
              //onTap: () {},
              leading: Icon(Icons.warning, color: Colors.greenAccent,),
            ),
            ListTile(
              title: Text('Send'),
              //onTap: (){},
              leading: Icon(Icons.send),
            ),
            ListTile(
              title: Text('Drafts'),
              //onTap: (){},
              leading: Icon(Icons.drafts),
            ),
            ListTile(
              title: Text('Important'),
              //onTap: (){},
              leading: Icon(Icons.star),
            ),
            ListTile(
              title: Text('OutBox'),
              //onTap: (){},
              leading: Icon(Icons.outbox),
            ),
          ],
        ),
      ),
    );
  }
}

