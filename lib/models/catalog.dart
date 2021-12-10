class CatalogModel {
  static final items = [
    Item(
        id: 1,
        name: "Vivo X50 Pro",
        desc: "Vivo X Series Professional Photography Phone",
        price: 9999,
        color: "	#FFFFFF",
        image:
            "https://cdn-files.kimovil.com/phone_front/0006/48/thumb_547311_phone_front_big.jpeg")
  ];
}

class Item {
  final int id;
  final String name;
  final String desc;
  final num price;
  final String color;
  final String image;

  Item(
      {required this.id,
      required this.name,
      required this.desc,
      required this.price,
      required this.color,
      required this.image});
}
