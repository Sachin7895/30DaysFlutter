import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_cata/models/cart.dart';
import 'package:flutter_cata/models/catalog.dart';

import 'package:velocity_x/velocity_x.dart';

class AddCart extends StatefulWidget {
  final Item catalog;

  const AddCart({Key? key, required this.catalog}) : super(key: key);

  @override
  State<AddCart> createState() => AddCartState();
}

class AddCartState extends State<AddCart> {
  final _cart = CartModel();
  @override
  Widget build(BuildContext context) {
    bool isInCart = _cart.items.contains(widget.catalog) ?? false;

    return ElevatedButton(
      style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all(context.theme.buttonColor),
          shape: MaterialStateProperty.all(StadiumBorder())),
      onPressed: () {
        if (!isInCart) {
          isInCart = isInCart.toggle();
          final _catalog = CatalogModel();

          _cart.catalog = _catalog;

          _cart.add(widget.catalog);

          setState(() {});
        }
      },
      child: isInCart
          ? Icon(Icons.done)
          : Icon(CupertinoIcons.cart_fill_badge_plus),
    );
  }
}
