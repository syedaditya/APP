import 'package:flutter/material.dart';

import '../widges/drawer.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    int days = 30;
    String name = "Aditya";
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Chosmar Dokan",
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
        ),
      ),
      body: Center(
        child: Container(
          child: Text('Welcome $name in $days days of my app'),
        ),
      ),
      drawer: MyDrawer(),
    );
  }
}
