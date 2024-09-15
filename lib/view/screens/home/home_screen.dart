import 'package:bro_s_journey/models/trending_book.dart';
import 'package:bro_s_journey/models/author.dart';
import 'package:bro_s_journey/utils/app_constant.dart';
import 'package:bro_s_journey/utils/dimension.dart';
import 'package:bro_s_journey/view/screens/home/widgets/author_cart_widget.dart';
import 'package:bro_s_journey/view/screens/home/widgets/button_label_widget.dart';
import 'package:bro_s_journey/view/screens/home/widgets/home_header_widget.dart';
import 'package:bro_s_journey/view/screens/home/widgets/product_list_view.dart';
import 'package:bro_s_journey/view/widgets/pull_to_refresh_header.dart';
import 'package:flutter/material.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';
import 'package:skeletonizer/skeletonizer.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  bool _isLoading = true;
  final RefreshController _refreshController =
      RefreshController(initialRefresh: false);

  @override
  void initState() {
    super.initState();
    _loadData();
  }

  Future<void> _loadData() async {
    await Future.delayed(const Duration(seconds: 10));
    setState(() {
      _isLoading = false;
    });
  }

  Future<void> _refresh() async {
    setState(() {
      _isLoading = true;
    });

    await _loadData();
    _refreshController.refreshCompleted();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.whiteColor,
      body: SafeArea(
        child: SmartRefresher(
          controller: _refreshController,
          onRefresh: _refresh,
          header: CustomHeader(
            builder: (BuildContext context, RefreshStatus? status) {
              return PullToRefreshHeader(status: status);
            },
          ),
          child: Skeletonizer(
            enabled: _isLoading,
            child: SingleChildScrollView(
              child: Column(
                children: [
                  const Padding(
                    padding: EdgeInsets.fromLTRB(15, 0, 15, 0),
                    child: HomeHeaderWidget(),
                  ),
                  const Padding(
                    padding: EdgeInsets.fromLTRB(15, 15, 15, 15),
                    child: ButtonLabel(
                        label: 'Recommended Books', action_label: 'See More'),
                  ),
                  ProductListView(books: recommendedBook),
                  const Padding(
                    padding: EdgeInsets.fromLTRB(15, 15, 15, 15),
                    child: ButtonLabel(
                      label: 'Trending Books',
                      action_label: 'See More',
                    ),
                  ),
                  ProductListView(books: trendingBooks),
                  const Padding(
                    padding: EdgeInsets.fromLTRB(15, 15, 15, 15),
                    child: ButtonLabel(
                        label: 'Top Authors', action_label: 'See More'),
                  ),
                  SizedBox(
                    height: Dimension.screenHeightPercentage(context, 0.14),
                    child: ListView.separated(
                      padding: const EdgeInsets.symmetric(horizontal: 15),
                      separatorBuilder: (context, index) =>
                          const SizedBox(width: 15),
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
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
