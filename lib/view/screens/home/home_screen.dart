import 'package:bro_s_journey/controllers/home_controller.dart';
import 'package:bro_s_journey/models/book.dart';
import 'package:bro_s_journey/models/author.dart';
import 'package:bro_s_journey/view/screens/home/widgets/all_product_gridview.dart';
import 'package:bro_s_journey/view/screens/home/widgets/authors_list_widget.dart';
import 'package:bro_s_journey/view/screens/home/widgets/button_label_widget.dart';
import 'package:bro_s_journey/view/screens/home/widgets/home_header_widget.dart';
import 'package:bro_s_journey/view/screens/home/widgets/product_list_view.dart';
import 'package:bro_s_journey/view/widgets/pull_to_refresh_header.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';
import 'package:skeletonizer/skeletonizer.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => HomeController(),
      child: Scaffold(
        backgroundColor: Colors.white,
        body: SafeArea(
          child: Consumer<HomeController>(
            builder: (context, controller, _) {
              return SmartRefresher(
                controller: controller.refreshController,
                onRefresh: controller.refresh,
                header: CustomHeader(
                  builder: (BuildContext context, RefreshStatus? status) {
                    return PullToRefreshHeader(status: status);
                  },
                ),
                child: Skeletonizer(
                  enabled: controller.isLoading,
                  enableSwitchAnimation: true,
                  effect: PulseEffect(
                    from: Colors.grey.shade50,
                    to: Colors.grey.shade100,
                    duration: const Duration(seconds: 1),
                  ),
                  child: SingleChildScrollView(
                    child: Column(
                      children: [
                        const HomeHeaderWidget(),
                        const ButtonLabel(
                          label: 'Recommended Books',
                          action_label: 'See More',
                        ),
                        ProductListView(books: Book.recommendedBooks),
                        const ButtonLabel(
                          label: 'Trending Books',
                          action_label: 'See More',
                        ),
                        ProductListView(books: Book.trendingBooks),
                        const ButtonLabel(
                          label: 'Top Authors',
                          action_label: 'See More',
                        ),
                        AuthorsList(authors: authors),
                        const ButtonLabel(
                            label: 'All Books', action_label: ' '),
                        ProductGridView(books: Book.books),
                      ],
                    ),
                  ),
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
