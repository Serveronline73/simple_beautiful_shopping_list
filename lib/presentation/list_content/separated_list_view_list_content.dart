import 'package:flutter/material.dart';
import 'package:simple_beautiful_shopping_list/models/product.dart';
import 'package:simple_beautiful_shopping_list/presentation/list_entry.dart';

class SeparatedListViewListContent extends StatelessWidget {
  const SeparatedListViewListContent({super.key, required this.products});
  final List<Product> products;
  @override
  Widget build(BuildContext context) {
    // Hier soll eine ListView zurückgegeben werden.
    return ListView.separated(
        itemBuilder: (context, index) {
          return ListEntry(product: products[index]);
        },
        separatorBuilder: (context, index) {
          return const SizedBox(height: 16);
        },
        itemCount: products.length);
  }
}
