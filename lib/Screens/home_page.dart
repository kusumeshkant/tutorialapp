import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  final int day = 30;
  final String name = "kush";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Catalog App")),
      // ignore: avoid_unnecessary_containers
      body: Center(
        child: Text("Welcome to $day day of flutter tutorial by $name"),
      ),
      drawer: Drawer(),
    );
  }
}
