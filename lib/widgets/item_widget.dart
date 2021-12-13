import 'package:flutter/material.dart';
import 'package:flutter_cata/models/catalog.dart';

class ItemWidget extends StatelessWidget {
  final Item item;
  ItemWidget({Key? key, required this.item})
      // ignore: unnecessary_null_comparison
      : assert(item != null),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        onTap: () {
          print("${item.name} pressed");
        },
        leading:
            SizedBox(height: 100, width: 100, child: Image.network(item.image)),
        title: Text(
          item.name,
          style: TextStyle(
            color: Colors.black,
          ),
        ),
        subtitle: Text(
          item.desc,
          // ignore: prefer_const_constructors
          style: TextStyle(
            color: Colors.black,
          ),
        ),
        trailing: Text(
          "\$${item.price}",
          textScaleFactor: 1.5,
          style: TextStyle(
            color: Colors.black87,
            fontWeight: FontWeight.normal,
          ),
        ),
      ),
    );
  }
}
