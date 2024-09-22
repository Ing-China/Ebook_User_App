import 'package:bro_s_journey/models/book.dart';
import 'package:bro_s_journey/view/screens/bookdetail/book_detail_screen.dart';
import 'package:bro_s_journey/view/screens/home/widgets/product_cart_widget.dart';
import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';

class ProductListView extends StatelessWidget {
  final List<Book> books;
  const ProductListView({super.key, required this.books});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 300,
      child: ListView.separated(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        separatorBuilder: (context, index) => const SizedBox(width: 15),
        scrollDirection: Axis.horizontal,
        itemCount: books.length,
        itemBuilder: (context, index) {
          final book = books[index];
          return ProductCartWidget(
            id: book.id,
            imageUrl: book.imageUrl,
            name: book.name,
            authors: book.authors,
            rating: book.rating,
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
