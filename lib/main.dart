import 'package:flutter/material.dart';
import 'package:flutter_tutorial/Screens/login_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // initialRoute: "/home";
      routes: {
        "/": (context) => LoginPage(),
        "/Login": (context) => LoginPage(),
      },
    );
  }
}
