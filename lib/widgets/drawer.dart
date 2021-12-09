// ignore_for_file: prefer_const_constructors

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    const imageUrl =
        "https://avatars.githubusercontent.com/u/49015949?s=400&u=cd5e408e01b8af7e6d866c3aa11c1d7be6109292&v=4";
    return Drawer(
      child: Container(
        color: Colors.deepPurple,
        child: ListView(
          // ignore: prefer_const_literals_to_create_immutables
          children: [
            // ignore: prefer_const_constructors
            DrawerHeader(
                padding: EdgeInsets.zero,
                child: UserAccountsDrawerHeader(
                  margin: EdgeInsets.zero,
                  accountName: Text("Sachin Bisht"),
                  accountEmail: Text("SachinBisht996@gmail.com"),
                  currentAccountPicture: CircleAvatar(
                    backgroundImage: NetworkImage(imageUrl),
                  ),
                )),

            ListTile(
                leading: Icon(CupertinoIcons.home, color: Colors.white),
                title: Text(
                  "Home",
                  textScaleFactor: 1.3,
                  style: TextStyle(color: Colors.white),
                )),

            ListTile(
                leading:
                    Icon(CupertinoIcons.profile_circled, color: Colors.white),
                title: Text(
                  "Profile",
                  textScaleFactor: 1.3,
                  style: TextStyle(color: Colors.white),
                )),
            ListTile(
                leading: Icon(CupertinoIcons.mail, color: Colors.white),
                title: Text(
                  "Mail Me",
                  textScaleFactor: 1.3,
                  style: TextStyle(color: Colors.white),
                )),

            ListTile(
                leading: Icon(CupertinoIcons.download_circle_fill,
                    color: Colors.white),
                title: Text(
                  "Download",
                  textScaleFactor: 1.3,
                  style: TextStyle(color: Colors.white),
                ))
          ],
        ),
      ),
    );
  }
}
