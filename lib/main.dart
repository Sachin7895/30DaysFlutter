import 'package:flutter/material.dart';

import 'home.dart';

void main() {
  runApp(MyApp());
}

// ignore: must_be_immutable
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
   

    return MaterialApp(
      home: HomePage(), 
    );
  }
}
