import 'package:bro_s_journey/models/trending_book.dart';
import 'package:bro_s_journey/utils/dimension.dart';
import 'package:bro_s_journey/view/screens/home/widgets/product_cart_widget.dart';
import 'package:flutter/material.dart';

class ProductListView extends StatelessWidget {
  final List<Book> books;
  const ProductListView({super.key, required this.books});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: Dimension.screenHeightPercentage(context, 0.3),
      child: ListView.separated(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        separatorBuilder: (context, index) => const SizedBox(width: 15),
        scrollDirection: Axis.horizontal,
        itemCount: books.length,
        itemBuilder: (context, index) {
          final book = books[index];
          return ProductCartWidget(
            imageUrl: book.imageUrl,
            name: book.name,
            authors: book.authors,
            rating: book.rating,
          );
        },
      ),
    );
  }
}
