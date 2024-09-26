import 'package:bro_s_journey/view/screens/bookdetail/book_detail_screen.dart';
import 'package:flutter/material.dart';
import 'package:bro_s_journey/models/book.dart';
import 'package:bro_s_journey/view/screens/home/widgets/product_cart_widget.dart';
import 'package:page_transition/page_transition.dart';

class ProductGridView extends StatelessWidget {
  final List<Book> books;

  const ProductGridView({super.key, required this.books});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15.0),
      child: GridView.builder(
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 15.0,
          mainAxisSpacing: 15.0,
          childAspectRatio: 0.51,
        ),
        itemCount: books.length,
        itemBuilder: (context, index) {
          final book = books[index];
          return ProductCartWidget(
            id: book.id,
            imageUrl: book.imageUrl,
            name: book.name,
            authors: book.authors,
            rating: book.rating,
            imageHeight: 300,
            onTap: () {
              Navigator.push(
                context,
                PageTransition(
                  duration: Duration(milliseconds: 800),
                  isIos: true,
                  child: BookDetailScreen(
                    id: book.id,
                    name: book.name,
                  ),
                  type: PageTransitionType.rightToLeft,
                ),
              );
            },
          );
        },
      ),
    );
  }
}
