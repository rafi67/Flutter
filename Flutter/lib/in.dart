import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

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

  bool s = false;
  ThemeData light = ThemeData(brightness: Brightness.light);
  ThemeData dark = ThemeData(brightness: Brightness.dark);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: s?dark:light,
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Login'),
          centerTitle: true,
          backgroundColor: Colors.red,
          actions: [
            PopupMenuButton(itemBuilder: (context){
              return [
                 PopupMenuItem<int>(
                  value: 0,
                  child:  Column(
                    children: const<Widget>[
                      Text('Theme'),
                    ],
                  ),
                ),
                PopupMenuItem<int>(
                  value: 1,
                  child:  Column(
                    children: <Widget>[
                     Switch(value: s, onChanged: (newValue){
                        setState(() {
                          s = newValue;
                        });
                      }),
                    ],
                  ),
                ),
              ];
            },
            ),
          ],
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: 'Enter your Email',
                label: Text('Email'),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            const TextField(
              obscureText: true,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: 'Enter your password',
                label: Text('Password'),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            ElevatedButton(onPressed: (){}, child: const Text('Login'),
            style: ButtonStyle(backgroundColor: MaterialStateProperty.all(Colors.red)),
            ),
          ],
        ),
      ),
    );
  }
}

