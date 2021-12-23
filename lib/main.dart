import 'package:flutter/material.dart';
import 'package:flutter_cata/Pages/cart_page.dart';
import 'package:flutter_cata/Pages/splash_screen.dart';
import 'package:flutter_cata/core/store.dart';
import 'package:flutter_cata/utils/routes.dart';
import 'package:flutter_cata/widgets/theme.dart';
import 'package:velocity_x/velocity_x.dart';
import 'Pages/home.dart';
import 'Pages/login_page.dart';
import 'models/cart.dart';
import 'models/catalog.dart';
import 'widgets/theme.dart';

void main() {
  runApp(VxState(store: MyStore(CatalogModel(), CartModel()), child: MyApp()));
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
        // ignore: prefer_const__constructors
        "/": (context) => Splashscreen(),
        // ignore: prefer_const_constructors
        MyRoutes.loginRoute: (context) => LoginPage(),
        MyRoutes.homeRoute: (context) => HomePage(),
        MyRoutes.cartRoute: (context) => CartPage(),
      },
    );
  }
}
