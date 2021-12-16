import 'package:flutter/material.dart';
import 'package:flutter_cata/Pages/cart_page.dart';
import 'package:flutter_cata/Pages/splash_Screen.dart';
import 'package:flutter_cata/utils/routes.dart';
import 'package:flutter_cata/widgets/theme.dart';
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
      themeMode: ThemeMode.system,
      theme: MyTheme.lightTheme(context),
      darkTheme: MyTheme.darkTheme(context),
      debugShowCheckedModeBanner: false,
      // initialRoute: MyRoutes.slash_Screen,
      routes: {
        // ignore: prefer_const_constructors
        "/": (context) => HomePage(),
        // ignore: prefer_const_constructors
        MyRoutes.loginRoute: (context) => LoginPage(),
        MyRoutes.homeRoute: (context) => HomePage(),
        MyRoutes.cartRoute: (context) => CartPage(),
      },
    );
  }
}
