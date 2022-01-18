import 'package:flutter/material.dart';
import 'pattern.dart';

class MyApp2 extends StatelessWidget {
  const MyApp2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: LoginPage(),
    );
  }
}

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {

  final myController = TextEditingController();
  final mController = TextEditingController();

  @override
  void dispose() {
    myController.dispose();
    mController.dispose();
    super.dispose();
  }

  void log() {
    if('Rafi'==myController.text && '1234'==mController.text) {
      setState(() {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context)=> const P()),
        );
      });
    }
    else {
      showDialog(
          context: context,
          builder: (context){
            return const AlertDialog(
              content: Text('Invalid Password or Name'),
            );
          });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Login'),
        backgroundColor: Colors.blue,
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          children:  <Widget>[
             Padding(
              padding: const EdgeInsets.all(20.0),
              child: TextField(
                controller: myController,
                decoration: const InputDecoration(
                  labelText: 'Name',
                  hintText: 'Type your name',
                  border: OutlineInputBorder(),
                ),
              ),
            ),
             Padding(
               padding: const EdgeInsets.all(20.0),
              child: TextField(
                controller: mController,
                obscureText: true,
                decoration: const InputDecoration(
                  labelText: 'Password',
                  hintText: 'Type your password',
                  border: OutlineInputBorder(),
                ),
              ),
            ),
            RaisedButton(onPressed: log, child: const Text('Login'), elevation: 30, color: Colors.blue),
          ],
        ),
      ),
    );
  }
}

