import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_cata/Pages/home.dart';
import 'package:flutter_cata/Pages/home_details_pages.dart';

import 'package:flutter_cata/models/catalog.dart';
import 'package:flutter_cata/widgets/home_widgets/catalog_image.dart';
import 'package:flutter_cata/widgets/theme.dart';
import 'package:velocity_x/velocity_x.dart';

class CatalogList extends StatelessWidget {
  const CatalogList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      itemCount: CatalogModel.items!.length,
      itemBuilder: (context, index) {
        final catalog = CatalogModel.getByPosition(index);
        return InkWell(
            onTap: () => Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (Context) => HomeDetailPage(catalog: catalog))),
            child: CatalogItem(catalog));
      },
    );
  }
}  

class CatalogItem extends StatelessWidget {
  final Item catalog;
  const CatalogItem(@required this.catalog, {Key? key})
      : assert(catalog != null),
        super(key: key);
  @override
  Widget build(BuildContext context) {
    return VxBox(
        child: Row(
      children: [
        Hero(
            tag: Key(catalog.id.toString()),
            child: CatalogImage(image: catalog.image)),
        Expanded(
            child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            catalog.name.text.xl.color(context.theme.accentColor).bold.make(),
            catalog.desc.text.make(),
            10.heightBox,
            ButtonBar(
              buttonPadding: EdgeInsets.zero,
              alignment: MainAxisAlignment.spaceBetween,
              children: [
                "\$${catalog.price}".text.bold.xl.make(),
                ElevatedButton(
                    style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all(
                            context.theme.buttonColor),
                        shape: MaterialStateProperty.all(StadiumBorder())),
                    onPressed: () {},
                    child: "Add to Cart".text.make())
              ],
            ).pOnly(right: 8.0)
          ],
        ))
      ],
    )).color(context.cardColor).rounded.square(150).make().p8();
  }
}
