import 'package:bro_s_journey/view/screens/home/widgets/authors_list_widget.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';
import 'package:skeletonizer/skeletonizer.dart';
import 'package:bro_s_journey/controllers/home_controller.dart';
import 'package:bro_s_journey/helpers/theme_helper.dart';
import 'package:bro_s_journey/view/screens/home/widgets/all_product_gridview.dart';
import 'package:bro_s_journey/view/screens/home/widgets/button_label_widget.dart';
import 'package:bro_s_journey/view/screens/home/widgets/home_header_widget.dart';
import 'package:bro_s_journey/view/screens/home/widgets/product_list_view.dart';
import 'package:bro_s_journey/view/widgets/pull_to_refresh_header.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => HomeController(),
      child: Scaffold(
        backgroundColor: ThemeHelper.getPrimaryColor(context),
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
                    from: ThemeHelper.getGreyShade50(context),
                    to: ThemeHelper.getGreyShade100(context),
                    duration: const Duration(seconds: 1),
                  ),
                  child: SingleChildScrollView(
                    scrollDirection: Axis.vertical,
                    child: Column(
                      children: [
                        const HomeHeaderWidget(),
                        const ButtonLabel(
                          label: 'Recommended Books',
                          action_label: 'See More',
                        ),
                        ProductListView(
                          books: controller.isLoading
                              ? controller.fakeBooks
                              : controller
                                      .recommendedPagingController.itemList ??
                                  [],
                          onFetchMore: () {
                            if (controller
                                    .recommendedPagingController.nextPageKey !=
                                null) {
                              controller.fetchRecommendedBooks(controller
                                  .recommendedPagingController.nextPageKey!);
                            }
                          },
                          isFetching: controller.isFetching,
                        ),
                        const ButtonLabel(
                          label: 'Trending Books',
                          action_label: 'See More',
                        ),
                        ProductListView(
                          books: controller.isLoading
                              ? controller.fakeBooks
                              : controller.trendingPagingController.itemList ??
                                  [],
                          onFetchMore: () {
                            if (controller
                                    .trendingPagingController.nextPageKey !=
                                null) {
                              controller.fetchTrendingBooks(controller
                                  .trendingPagingController.nextPageKey!);
                            }
                          },
                          isFetching: controller.isFetching,
                        ),
                        const ButtonLabel(
                          label: 'Top Authors',
                          action_label: 'See More',
                        ),
                        AuthorsList(
                          authors: controller.isLoading
                              ? controller.fakeAuthors
                              : controller.authorsPagingController.itemList ??
                                  [],
                          onFetchMore: () {
                            if (controller
                                    .authorsPagingController.nextPageKey !=
                                null) {
                              controller.fetchAllAuthors(controller
                                  .authorsPagingController.nextPageKey!);
                            }
                          },
                          isFetching: controller.isFetching,
                        ),
                        const ButtonLabel(
                          label: 'All Books',
                          action_label: ' ',
                        ),
                        ProductGridView(
                          books: controller.isLoading
                              ? controller.fakeBooks
                              : controller.allBooksPagingController.itemList ??
                                  [],
                          onFetchMore: () {
                            if (controller
                                    .authorsPagingController.nextPageKey !=
                                null) {
                              controller.fetchAllAuthors(controller
                                  .authorsPagingController.nextPageKey!);
                            }
                          },
                          isFetching: controller.isFetching,
                        ),
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
