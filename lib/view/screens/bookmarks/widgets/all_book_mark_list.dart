import 'package:bro_s_journey/utils/dimension.dart';
import 'package:bro_s_journey/view/screens/book/widgets/all_book_cart.dart';
import 'package:bro_s_journey/view/screens/bookdetail/book_detail_screen.dart';
import 'package:bro_s_journey/view/screens/bookmarks/widgets/all_book_mark_cart.dart';
import 'package:flutter/material.dart';
import 'package:bro_s_journey/models/book.dart';
import 'package:page_transition/page_transition.dart';

class AllBookMarkList extends StatelessWidget {
  final List<Book> books;

  const AllBookMarkList({
    super.key,
    required this.books,
  });

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      shrinkWrap: true,
      padding: const EdgeInsets.fromLTRB(15, 0, 15, 15),
      separatorBuilder: (context, index) => const SizedBox(height: 15),
      itemCount: books.length,
      itemBuilder: (context, index) {
        final book = books[index];
        return AllBookMarkCart(
          id: book.id,
          name: book.name,
          author: book.authors,
          rating: book.rating,
          imageUrl: book.imageUrl,
          onTap: () {
            Navigator.push(
              context,
              PageTransition(
                // child: BookDetailScreen(id: book.id, name: book.name),
                child: BookDetailScreen(id: '1', name: book.name),

                type: PageTransitionType.rightToLeft,
              ),
            );
          },
        );
      },
    );
  }
}
