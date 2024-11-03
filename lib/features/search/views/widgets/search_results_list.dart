import 'package:ecommerce_app/features/products/views/product_view.dart';
import 'package:ecommerce_app/features/search/views/widgets/search_result_item.dart';
import 'package:flutter/material.dart';

class SearchResultsList extends StatelessWidget {
  const SearchResultsList({super.key});

  moveToProductPage(BuildContext context) {
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (context) => ProductView(),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GridView.builder(
        gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
          maxCrossAxisExtent: 300,
          childAspectRatio: 1.7 / 2,
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
        ),
        itemBuilder: (context, index) => SearchResultItem(
          onTap: () {
            moveToProductPage(context);
          },
        ),
      ),
    );
  }
}