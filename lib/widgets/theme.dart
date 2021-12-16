// ignore_for_file: deprecated_member_use

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:velocity_x/velocity_x.dart';

class MyTheme {
  static ThemeData lightTheme(BuildContext context) => ThemeData(
        fontFamily: GoogleFonts.poppins().fontFamily,
        cardColor: Colors.white,
        canvasColor: creamColor,
        buttonColor: darkBluishColor,
        accentColor: darkcreamColor,
        appBarTheme: AppBarTheme(
            color: Colors.black,
            elevation: 0.0,
            // ignore: prefer_const_constructors
            iconTheme: IconThemeData(
              color: Colors.black,
            ),
            // ignore: deprecated_member_use
            textTheme: Theme.of(context).textTheme),
      );

  static ThemeData darkTheme(BuildContext context) => ThemeData(
      fontFamily: GoogleFonts.poppins().fontFamily,
      brightness: Brightness.dark,
      cardColor: Colors.black,
      canvasColor: darkcreamColor,
      // ignore: deprecated_member_use
      accentColor: Colors.white,
      // ignore: deprecated_member_use
      buttonColor: lightBluishColor,
      appBarTheme: AppBarTheme(
        color: Colors.black,
        elevation: 0.0,
        // ignore: prefer_const_constructors
        iconTheme: IconThemeData(
          color: Colors.white,
        ),
        // ignore: deprecated_member_use
        textTheme: Theme.of(context).textTheme.copyWith(
            headline6:
                context.textTheme.headline6!.copyWith(color: Colors.white)),
      ));

  static Color creamColor = Color(0xfff5f5f5);
  static Color darkcreamColor = Vx.gray600;
  static Color darkBluishColor = Color(0xff403b58);
  static Color lightBluishColor = Vx.purple800;
}
