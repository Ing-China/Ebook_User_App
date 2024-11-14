import 'package:bro_s_journey/models/bookz.dart';
import 'package:bro_s_journey/utils/api_client.dart';
import 'package:bro_s_journey/utils/app_constant.dart';
import 'package:flutter/material.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';

class HomeController extends ChangeNotifier {
  static const int _pageSize = 10;
  final RefreshController refreshController =
      RefreshController(initialRefresh: false);
  final PagingController<int, Bookz> pagingController =
      PagingController(firstPageKey: 1);
  final ApiClient apiClient = ApiClient();

  bool isLoading = true;
  bool isFetching = false;

  List<Bookz> fakeBooks = [];

  HomeController() {
    pagingController.addPageRequestListener((pageKey) {
      fetchBooks(pageKey);
    });

    addFakeData();
    fetchBooks(1);
  }

  void addFakeData() {
    fakeBooks = Bookz.fakeBookz;
    isLoading = true;
    notifyListeners();
  }

  Future<void> fetchBooks(int pageKey) async {
    if (isFetching) return;

    try {
      isFetching = true;
      notifyListeners();

      if (pageKey == 1) {
        addFakeData();
      }

      final response = await apiClient
          .getData('${AppConstant.RECOMMENDED_BOOK_URI}?page=$pageKey');
      final jsonData = response['books'] as List<dynamic>?;

      if (jsonData == null || jsonData.isEmpty) {
        pagingController.appendLastPage([]);
        return;
      }

      final newBooks =
          jsonData.map((bookJson) => Bookz.fromJson(bookJson)).toList();
      final isLastPage = newBooks.length < _pageSize;

      if (isLastPage) {
        pagingController.appendLastPage(newBooks);
      } else {
        pagingController.appendPage(newBooks, pageKey + 1);
      }

      if (pageKey == 1) {
        refreshController.refreshCompleted();
      }
    } catch (error) {
      pagingController.error = error;
      refreshController.refreshFailed();
    } finally {
      isLoading = false;
      isFetching = false;
      notifyListeners();
    }
  }

  Future<void> refresh() async {
    pagingController.refresh();
    addFakeData();
    await fetchBooks(1);
    notifyListeners();
  }
}
