import 'package:velocity_x/velocity_x.dart';

import 'package:flutter_cata/models/cart.dart';
import 'package:flutter_cata/models/catalog.dart';

class MyStore extends VxStore {
  CatalogModel catalog;
  CartModel cart;

  MyStore(
    this.catalog,
    this.cart,
  ) {
    catalog = CatalogModel();
    cart = CartModel();
    cart.catalog = catalog;
  }
  

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
  
    return other is MyStore &&
      other.catalog == catalog &&
      other.cart == cart;
  }

  @override
  int get hashCode => catalog.hashCode ^ cart.hashCode;
}
