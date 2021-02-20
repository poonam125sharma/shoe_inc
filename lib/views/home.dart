import 'package:flutter/material.dart';
import 'package:shoe_inc/views/header.dart';
import 'package:shoe_inc/views/featured.dart';
import 'package:shoe_inc/views/products.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: <Widget>[
          Header(),
          Featured(),
          Products()
        ],
      ),
    );
  }
}