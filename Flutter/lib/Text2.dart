import 'package:flutter/material.dart';
import 'form.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Login(),
    );
  }
}

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {

  final name = TextEditingController();
  final pass = TextEditingController();

  @override
  void dispose() {
    name.dispose();
    pass.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Login'),
        backgroundColor: Colors.blue,
        centerTitle: true,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(10),
            child: TextField(
              controller: name,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Name',
                hintText: 'Enter your Name',
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10),
            child: TextField(
              obscureText: true,
              controller: pass,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Password',
                hintText: 'Enter your Password',
              ),
            ),
          ),
          ElevatedButton(
            onPressed: () {
              setState(() {
                if('Rafi'==name.text && '1234'==pass.text) {
                  name.clear();
                  pass.clear();
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context)=> const App()),
                  );
                }
              });
            },
            child: const Text('Login', style: TextStyle(color: Colors.white),),
            style: ElevatedButton.styleFrom(
              primary: Colors.blueAccent,
              onPrimary: Colors.blueAccent,
            ),
          ),
        ],
      ),
    );
  }
}
