import 'package:flutter/material.dart';
import 'package:flutter_cata/widgets/drawer.dart';


// Day 11 we learned about context ,contraints
class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    int days = 30;
    String name = "Sachin Bisht"; 
    return Scaffold(
      appBar: AppBar(
        title: Text("Catalog App",style: TextStyle(color: Colors.black),),
      ),
      body: Center(
        // ignore: avoid_unnecessary_containers
        child: Container(
          child: Text("Welcome to $days days of flutter by $name"),
        ),
      ),
      drawer: MyDrawer(),
    );
  } 
}
