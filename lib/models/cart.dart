import 'package:flutter_cata/core/store.dart';
import 'package:flutter_cata/models/catalog.dart';
import 'package:velocity_x/velocity_x.dart';

class CartModel {
  //catalog field

  late CatalogModel _catalog;

// Collection of ids - store Ids for eac item
  final List<int> _itemIds = [];
// Get Catalog
  CatalogModel get catalog => _catalog;

  set catalog(CatalogModel newCatalog) {
    assert(newCatalog != null);
    _catalog = newCatalog;
  }

  List<Item> get items => _itemIds.map((id) => _catalog.getByID(id)).toList();
  // Get total price

  num get totalPrice =>
      items.fold(0, (total, current) => total + current.price);
}
// Add Item

// Remove Item

class AddMutation extends VxMutation<MyStore> {
  final Item item;

  AddMutation(this.item);

  @override
  perform() {
    store!.cart._itemIds.add(item.id);
  }
}

class RemoveMutation extends VxMutation<MyStore> {
  final Item item;

  RemoveMutation(this.item);

  @override
  perform() {
    store!.cart._itemIds.remove(item.id);
  }
}
