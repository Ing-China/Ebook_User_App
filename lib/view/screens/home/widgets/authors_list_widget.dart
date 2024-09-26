import 'package:bro_s_journey/models/author.dart';
import 'package:bro_s_journey/view/screens/home/widgets/author_cart_widget.dart';
import 'package:flutter/material.dart';

class AuthorsList extends StatelessWidget {
  final List<Author> authors;
  const AuthorsList({super.key, required this.authors});

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
            name: author.name,
            imageUrl: author.imageurl,
          );
        },
      ),
    );
  }
}
