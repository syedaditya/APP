import 'package:chosmar_dokan/widges/home_widgets/catalog_image.dart';
import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  get catalog_list => null;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: catalog_list,
    );
  }
}
