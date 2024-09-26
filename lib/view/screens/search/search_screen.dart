import 'package:bro_s_journey/models/book.dart';
import 'package:bro_s_journey/utils/app_constant.dart';
import 'package:bro_s_journey/view/screens/book/widgets/all_book_list.dart';
import 'package:bro_s_journey/view/screens/search/widgets/search_widget.dart';
import 'package:flutter/material.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({super.key});

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.whiteColor,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              const SearchWidget(),
              AllBookList(
                books: Book.books,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
