import 'package:bro_s_journey/models/bookz.dart';
import 'package:bro_s_journey/view/screens/bookdetail/book_detail_screen.dart';
import 'package:bro_s_journey/view/screens/home/widgets/product_cart_widget.dart';
import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';

class ProductListView extends StatelessWidget {
  final List<Bookz> books; // List of books
  final VoidCallback onFetchMore; // Callback to fetch more data
  final bool isFetching; // Track if data is being fetched

  const ProductListView({
    super.key,
    required this.books,
    required this.onFetchMore,
    required this.isFetching,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 300,
      child: NotificationListener<ScrollNotification>(
        onNotification: (ScrollNotification scrollInfo) {
          // Check if we are at the bottom of the list
          if (scrollInfo.metrics.pixels == scrollInfo.metrics.maxScrollExtent &&
              !isFetching) {
            // Use isFetching here
            onFetchMore(); // Fetch more data
          }
          return true;
        },
        child: ListView.separated(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          separatorBuilder: (context, index) => const SizedBox(width: 15),
          scrollDirection: Axis.horizontal,
          itemCount: books.length,
          itemBuilder: (context, index) {
            final book = books[index];
            return ProductCartWidget(
              id: book.id ?? 'Unknown ID',
              imageUrl: book.image ?? '', // Provide an empty string as default
              name: book.name ?? 'Unknown Title',
              authors: book.author?.name ??
                  'Unknown Author', // Provide default author name
              rating: book.rating ?? 'No rating', // Provide default rating
              imageHeight: 225,
              onTap: () {
                Navigator.push(
                  context,
                  PageTransition(
                    duration: Duration(milliseconds: 800),
                    isIos: true,
                    child: BookDetailScreen(
                      id: book.id ?? 'Unknown ID',
                      name: book.name ?? 'Unknown Title',
                    ),
                    type: PageTransitionType.rightToLeft,
                  ),
                );
              },
            );
          },
        ),
      ),
    );
  }
}
