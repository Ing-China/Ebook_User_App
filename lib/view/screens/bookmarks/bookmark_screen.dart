import 'package:bro_s_journey/controllers/book_mark_controller.dart';
import 'package:bro_s_journey/helpers/theme_helper.dart';
import 'package:bro_s_journey/models/book.dart';
import 'package:bro_s_journey/utils/app_constant.dart';
import 'package:bro_s_journey/view/screens/bookmarks/widgets/all_book_mark_list.dart';
import 'package:bro_s_journey/view/screens/search/widgets/all_book_list.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:skeletonizer/skeletonizer.dart';

class BookmarkScreen extends StatefulWidget {
  const BookmarkScreen({super.key});

  @override
  State<BookmarkScreen> createState() => _BookmarkScreenState();
}

class _BookmarkScreenState extends State<BookmarkScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ThemeHelper.getPrimaryColor(context),
      body: ChangeNotifierProvider(
        create: (_) => BookmarkController(),
        child: SafeArea(
          child: Consumer<BookmarkController>(
            builder: (context, controller, _) {
              return RefreshIndicator(
                backgroundColor: AppColors.whiteColor,
                color: AppColors.primaryColor,
                onRefresh: controller.refreshBookmarks,
                child: Skeletonizer(
                  enabled: controller.isLoading,
                  enableSwitchAnimation: true,
                  effect: PulseEffect(
                    from: AppColors.greyShade50,
                    to: AppColors.greyShade100,
                    duration: const Duration(seconds: 1),
                  ),
                  child: AllBookMarkList(books: Book.bookMarks),
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
