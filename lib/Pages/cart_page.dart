// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_cata/core/store.dart';
import 'package:flutter_cata/models/cart.dart';

import 'package:velocity_x/velocity_x.dart';

class CartPage extends StatelessWidget {
  const CartPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: context.canvasColor,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          // ignore: deprecated_member_use
          title: "Cart".text.center.color(context.theme.accentColor).make(),
        ),
        body: Column(
          children: [
            _CartList().p32().expand(),
            Divider(),
            _CartTotal(),
          ],
        ));
  }
}

class _CartTotal extends StatelessWidget {
  const _CartTotal({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final CartModel _cart = (VxState.store as MyStore).cart;

    return SizedBox(
      height: 200,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          VxConsumer(
            notifications: {},
            mutations: {RemoveMutation},
            builder: (context,MyStore, _) {
              return "\$${_cart.totalPrice}"
                  .text
                  .xl5
                  .color(context.theme.accentColor)
                  .make();
            },
          ),
          30.widthBox,
          ElevatedButton(
                  onPressed: () {
                    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                      content: "Buy Not Supported yet".text.make(),
                    ));
                  },
                  style: ButtonStyle(
                      backgroundColor:
                          // ignore: deprecated_member_use
                          MaterialStateProperty.all(context.theme.buttonColor)),
                  child: "Buy".text.white.make())
              .w32(context)
        ],
      ),
    );
  }
}

class _CartList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    VxState.watch(context, on: [RemoveMutation]);
    final CartModel _cart = (VxState.store as MyStore).cart;
    return _cart.items.isEmpty
        ? 'Nothing To Show'.text.xl4.makeCentered()
        : ListView.builder(
            itemCount: _cart.items.length,
            itemBuilder: (context, index) => ListTile(
              leading: Icon(Icons.done),
              trailing: IconButton(
                onPressed: () => RemoveMutation(_cart.items[index]),
                icon: Icon(Icons.remove_circle_outline),
              ),
              title: _cart.items[index].name.text.make(),
            ),
          );
  }
}
