import 'package:flutter/material.dart';
import 'package:flutter_cata/utils/routes.dart';
import 'package:google_fonts/google_fonts.dart';
import 'Pages/home.dart';
import 'Pages/login_page.dart';

void main() {
  runApp(MyApp());
}

// ignore: must_be_immutable
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      themeMode: ThemeMode.light, 
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
        fontFamily: GoogleFonts.lato().fontFamily,
      ),
      debugShowCheckedModeBanner: false,
      initialRoute: MyRoutes.homeRoute,
      routes: {
        // ignore: prefer_const_constructors
        "/": (context) => LoginPage(),
        // ignore: prefer_const_constructors
        MyRoutes.loginRoute: (context) => LoginPage(),
        MyRoutes.homeRoute: (context) => HomePage(),
      },
    );
  }
}
