import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_cata/core/store.dart';
import 'package:flutter_cata/models/cart.dart';
import 'package:flutter_cata/models/catalog.dart';

import 'package:velocity_x/velocity_x.dart';

class AddCart extends StatelessWidget {
  final Item catalog;

  AddCart({Key? key, required this.catalog}) : super(key: key);

  final _cart = CartModel();
  @override
  Widget build(BuildContext context) {
    VxState.watch(context, on: [AddMutation]);

    final CartModel _cart = (VxState.store as MyStore).cart;

    bool isInCart = _cart.items.contains(catalog) ?? false;

    return ElevatedButton(
      style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all(context.theme.buttonColor),
          shape: MaterialStateProperty.all(StadiumBorder())),
      onPressed: () {
        if (!isInCart) {
          AddMutation(catalog);

          // setState(() {});
        }
      },
      child: isInCart
          ? Icon(Icons.done)
          : Icon(CupertinoIcons.cart_fill_badge_plus),
    );
  }
}
