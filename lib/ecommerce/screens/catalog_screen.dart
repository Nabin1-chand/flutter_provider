import 'package:flutter/material.dart';
import 'package:flutter_provider/ecommerce/widgets/app_bar_data.dart';

class MyCatalog extends StatelessWidget {
  const MyCatalog({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: CustomScrollView(
        slivers: [
          AppBarData(),
          SliverToBoxAdapter(
            child: SizedBox(
              height: 12,
            ),
          ),
          // SliverList(
          //     delegate: SliverChildBuilderDelegate(
          //         (context, index) => MyListItem(index: index)))
        ],
      ),
    );
  }
}
