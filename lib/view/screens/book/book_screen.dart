import 'package:bro_s_journey/controllers/book_controller.dart';
import 'package:bro_s_journey/models/category.dart';
import 'package:bro_s_journey/utils/app_constant.dart';
import 'package:bro_s_journey/view/screens/book/widgets/all_book_list.dart';
import 'package:bro_s_journey/view/screens/book/widgets/category_list_widget.dart';
import 'package:bro_s_journey/view/screens/book/widgets/search_widget.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:skeletonizer/skeletonizer.dart';

class BookScreen extends StatefulWidget {
  const BookScreen({super.key});

  @override
  State<BookScreen> createState() => _BookScreenState();
}

class _BookScreenState extends State<BookScreen> {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => BookController()..fetchBooksByCategory(1),
      child: Scaffold(
        backgroundColor: AppColors.whiteColor,
        body: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              children: [
                const Search(),
                Consumer<BookController>(
                  builder: (context, controller, _) {
                    return Column(
                      children: [
                        CategoryList(
                          categories: Category.categories,
                          onCategoryTap: controller.fetchBooksByCategory,
                        ),
                        Skeletonizer(
                          enabled: controller.isLoading,
                          enableSwitchAnimation: true,
                          effect: PulseEffect(
                            from: Colors.grey.shade50,
                            to: Colors.grey.shade100,
                            duration: const Duration(seconds: 1),
                          ),
                          child: AllBookList(
                            books: controller.books,
                          ),
                        ),
                      ],
                    );
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
