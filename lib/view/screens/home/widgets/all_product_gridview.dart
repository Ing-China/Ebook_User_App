import 'package:bro_s_journey/models/bookz.dart';
import 'package:bro_s_journey/utils/dimension.dart';
import 'package:bro_s_journey/view/screens/bookdetail/book_detail_screen.dart';
import 'package:flutter/material.dart';
import 'package:bro_s_journey/models/book.dart';
import 'package:bro_s_journey/view/screens/home/widgets/product_cart_widget.dart';
import 'package:page_transition/page_transition.dart';

class ProductGridView extends StatelessWidget {
  final List<Bookz> books;
  final VoidCallback onFetchMore;
  final bool isFetching;

  const ProductGridView({
    super.key,
    required this.books,
    required this.isFetching,
    required this.onFetchMore,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15.0),
      child: GridView.builder(
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 15.0,
          mainAxisSpacing: 15.0,
          childAspectRatio: 0.52,
        ),
        itemCount: books.length,
        itemBuilder: (context, index) {
          final book = books[index];
          return ProductCartWidget(
            id: book.id ?? 'Unknown ID', // Provide default value if null
            imageUrl: book.image ?? '', // Default to empty string
            name: book.name ?? 'Unknown Title', // Default to unknown title
            authors: book.author!.name ??
                'Unknown Author', // Default to unknown author
            rating: book.rating?.toString() ??
                'No Rating', // Default to 'No Rating'
            imageHeight: 280,
            onTap: () {
              Navigator.push(
                context,
                PageTransition(
                  duration: const Duration(milliseconds: 800),
                  isIos: true,
                  child: BookDetailScreen(
                    id: book.id ??
                        'Unknown ID', // Provide default value if null
                    name: book.name ??
                        'Unknown Title', // Default to unknown title
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
