import 'package:flutter/material.dart';
import 'package:flutter_provider/ecommerce/model/catalog_mode.dart';

class CartModel extends ChangeNotifier {
  late CatalogModel _catalogModel;

  final List<int> _itemsId = [];
  CatalogModel get catalogModel => _catalogModel;
  setCatalog(CatalogModel newcatalogModel) {
    _catalogModel = newcatalogModel;
    notifyListeners();
  }

  List<Item> get items =>
      _itemsId.map((e) => _catalogModel.getById(e)).toList();

  // int get totalPrice =>
  //     items.fold(0, (total, current) => total + current.price);
  int totalPrice() {
    return items.fold(0, (total, current) => total + current.price);
  }

  void add(Item item) {
    _itemsId.add(item.id);
    notifyListeners();
  }

  void remove(Item item) {
    _itemsId.remove(item.id);
    notifyListeners();
  }
}
