import 'package:bro_s_journey/utils/app_constant.dart';
import 'package:bro_s_journey/view/screens/book/widgets/all_book_list.dart';
import 'package:bro_s_journey/view/screens/book/widgets/search_widget.dart';
import 'package:flutter/material.dart';
import 'package:bro_s_journey/models/book.dart';
import 'package:skeletonizer/skeletonizer.dart';

class BookScreen extends StatefulWidget {
  const BookScreen({super.key});

  @override
  State<BookScreen> createState() => _BookScreenState();
}

class _BookScreenState extends State<BookScreen> {
  bool _isLoading = true;

  @override
  void initState() {
    super.initState();
    _loadData();
  }

  Future<void> _loadData() async {
    await Future.delayed(const Duration(seconds: 5));
    setState(() {
      _isLoading = false;
    });
  }

  Future<void> _refresh() async {
    await _loadData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.whiteColor,
      body: SafeArea(
        child: RefreshIndicator(
          backgroundColor: AppColors.whiteColor,
          color: AppColors.primaryColor,
          onRefresh: _refresh,
          child: SingleChildScrollView(
            child: Column(
              children: [
                const Search(),
                Skeletonizer(
                  enabled: _isLoading,
                  child: AllBookList(
                    books: Book.books,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
