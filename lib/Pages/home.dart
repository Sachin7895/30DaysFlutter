// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'dart:convert';
import 'package:flutter_cata/models/catalog.dart';
import 'package:flutter_cata/widgets/drawer.dart';
import 'package:flutter_cata/widgets/item_widget.dart';

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  void initState() {
    super.initState();
    loadDate();
  }

  loadDate() async {
    await Future.delayed(Duration(seconds: 2));
    var catalogJson = await rootBundle.loadString("assests/files/catalog.json");
    // ignore: avoid_print

    var decodedData = jsonDecode(catalogJson);
    var productsData = decodedData["products"];
    print(productsData);
    CatalogModel.items = List.from(productsData)
        .map<Item>((item) => Item.fromMap(item))
        .toList();
    setState(() {});
  }

  Widget build(BuildContext context) {
    int days = 30;
    String name = "Sachin Bisht";

    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Catalog App",
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: (CatalogModel.items != null && CatalogModel.items!.isNotEmpty)
            ? GridView.builder(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisSpacing: 16,
                  mainAxisSpacing: 16,
                  crossAxisCount: 2,
                ),
                itemBuilder: (context, index) {
                  final item = CatalogModel.items![index];
                  return Card(
                      clipBehavior: Clip.antiAlias,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10)),
                      child: GridTile(
                        header: Container(
                          padding: EdgeInsets.all(12),
                          decoration: BoxDecoration(
                            color: Colors.purple,
                          ),
                          child: Text(
                            item.name,
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                        child: Image.network(item.image, fit: BoxFit.cover),
                        footer: Container(
                          padding: EdgeInsets.all(12),
                          decoration: BoxDecoration(
                            color: Colors.black,
                          ),
                          child: Text(
                            item.price.toString(),
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                      ));
                },
                itemCount: CatalogModel.items!.length,
              )
            : Center(
                child: CircularProgressIndicator(),
              ),
      ),
      drawer: MyDrawer(),
    );
  }
}
