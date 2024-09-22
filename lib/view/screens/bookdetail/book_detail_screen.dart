import 'package:bro_s_journey/models/book.dart';
import 'package:bro_s_journey/utils/app_constant.dart';
import 'package:bro_s_journey/utils/dimension.dart';
import 'package:bro_s_journey/view/screens/bookdetail/widgets/book_detail_widget.dart';
import 'package:bro_s_journey/view/screens/bookdetail/widgets/description_widget.dart';
import 'package:bro_s_journey/view/screens/bookdetail/widgets/image_widget.dart';
import 'package:bro_s_journey/view/screens/read/read_screen.dart';
import 'package:bro_s_journey/view/widgets/app_bar.dart';
import 'package:bro_s_journey/view/widgets/primary_button.dart';
import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';
import 'package:skeletonizer/skeletonizer.dart';

class BookDetailScreen extends StatefulWidget {
  final int id;
  final String name;
  const BookDetailScreen({super.key, required this.id, required this.name});

  @override
  State<BookDetailScreen> createState() => _BookDetailScreenState();
}

class _BookDetailScreenState extends State<BookDetailScreen> {
  late Book? _book;

  @override
  void initState() {
    super.initState();
    _book = Book.getBookById(widget.id);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.whiteColor,
      appBar: CustomAppBar(
        title: widget.name,
        showBookMarkButton: true,
      ),
      body: Stack(
        children: [
          Container(
            height: Dimension.screenHeight(context),
            child: Padding(
              padding: EdgeInsets.only(bottom: 90),
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    ImageWidget(book: _book),
                    BookDetail(book: _book),
                    Description(book: _book),
                  ],
                ),
              ),
            ),
          ),
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            height: 90,
            child: Container(
              decoration: BoxDecoration(
                color: AppColors.whiteColor,
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.1),
                    spreadRadius: 1,
                    blurRadius: 10,
                    offset: const Offset(0, -1),
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            bottom: 25,
            left: 20,
            right: 20,
            child: PrimaryButton(
              title: 'Read',
              onTap: () {
                Navigator.push(
                  context,
                  PageTransition(
                    duration: Duration(milliseconds: 800),
                    isIos: true,
                    child: ReadScreen(
                      pdfPath: _book!.pdfPath,
                      name: _book!.name,
                    ),
                    type: PageTransitionType.rightToLeft,
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
