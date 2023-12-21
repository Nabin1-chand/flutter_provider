import 'package:flutter/material.dart';

class CatalogModel {
  static List<String> itemNames = [
    'I found',
    'Love',
    'For me',
    'Darling just',
    'Dive',
    'Follow',
    'My Lead',
    'I found',
    'Beautiful Name',
    'Sweet',
    'I never',
    'Knew ',
    'Someone',
    'Waiting For',
    'Me',
  ];
  Item getById(int id) => Item(id, itemNames[id % itemNames.length]);
  
  Item getByPosition(int position) {
    return getById(position);
  }
}

class Item {
  final int id;
  final String name;
  final Color color;
  final int price = 42;
  Item(this.id, this.name)
      : color = Colors.primaries[id % Colors.primaries.length];
}
