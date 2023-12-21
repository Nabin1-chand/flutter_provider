import 'package:flutter/material.dart';
import 'package:flutter_provider/ecommerce/widgets/app_bar_data.dart';
import 'package:flutter_provider/ecommerce/widgets/my_list_item.dart';

class MyCatalog extends StatelessWidget {
  const MyCatalog({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          const AppBarData(),
          const SliverToBoxAdapter(
            child: SizedBox(
              height: 12,
            ),
          ),
          SliverList(
              delegate: SliverChildBuilderDelegate(
                  (context, index) => MyListItem(index: index)))
        ],
      ),
    );
  }
}
