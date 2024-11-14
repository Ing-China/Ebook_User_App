import 'package:bro_s_journey/models/author.dart';
import 'package:bro_s_journey/models/authorz.dart';
import 'package:bro_s_journey/view/screens/author/author_detail.dart';
import 'package:bro_s_journey/view/screens/home/widgets/author_cart_widget.dart';
import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';

class AuthorsList extends StatelessWidget {
  final List<Authorz> authors;
  final VoidCallback onFetchMore;
  final bool isFetching;
  const AuthorsList(
      {super.key,
      required this.authors,
      required this.isFetching,
      required this.onFetchMore});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 140,
      child: ListView.separated(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        separatorBuilder: (context, index) => const SizedBox(width: 15),
        scrollDirection: Axis.horizontal,
        itemCount: authors.length,
        itemBuilder: (context, index) {
          final author = authors[index];
          return AuthorCartWidget(
            id: author.id ?? '',
            name: author.name ?? '',
            imageUrl: author.image ?? '',
            onTap: () {
              Navigator.push(
                context,
                PageTransition(
                  duration: Duration(milliseconds: 800),
                  isIos: true,
                  child: AuthorDetail(
                    id: author.id ?? '1',
                    name: author.name ?? '',
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
