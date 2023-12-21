
import 'package:flutter/material.dart';
import 'package:flutter_provider/ecommerce/model/catalog_mode.dart';
import 'package:provider/provider.dart';

class MyListItem extends StatelessWidget {
  final int index;
  const MyListItem({super.key, required this.index});

  @override
  Widget build(BuildContext context) {
    var item = context.select<CatalogModel, Item>(
      (catalog) => catalog.getByPosition(index),
    );
    var textTheme = Theme.of(context).textTheme.titleLarge;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      child: LimitedBox(
        maxHeight: 48,
        child: Row(
          children: [
            AspectRatio(
              aspectRatio: 1,
              child: Container(
                color: item.color,
              ),
            ),
                 const SizedBox(width: 24),
                 Expanded(child: Text(item.name, style: textTheme,))
          ],
        ),
      ),
    );
  }
}