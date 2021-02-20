import 'package:flutter/material.dart';
import 'package:shoe_inc/views/home.dart';

void main() {
  runApp(ShoeIncApp());
}

class ShoeIncApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Great Shoes Inc.',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: HomePage()
    );
  }
}
