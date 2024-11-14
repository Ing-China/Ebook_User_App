import 'package:bro_s_journey/models/authorz.dart';
import 'package:bro_s_journey/models/bookz.dart';
import 'package:bro_s_journey/utils/api_client.dart';
import 'package:bro_s_journey/utils/app_constant.dart';
import 'package:flutter/material.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';

class HomeController extends ChangeNotifier {
  final RefreshController refreshController =
      RefreshController(initialRefresh: false);

  final PagingController<int, Bookz> recommendedPagingController =
      PagingController(firstPageKey: 1);
  final PagingController<int, Bookz> trendingPagingController =
      PagingController(firstPageKey: 1);
  final PagingController<int, Bookz> allBooksPagingController =
      PagingController(firstPageKey: 1);

  final PagingController<int, Authorz> authorsPagingController =
      PagingController(firstPageKey: 1);

  final ApiClient apiClient = ApiClient();

  bool isLoading = true;
  bool isFetching = false;

  List<Bookz> fakeBooks = [];
  List<Authorz> fakeAuthors = [];

  bool hasFetchedRecommended = false;
  bool hasFetchedTrending = false;
  bool hasFetchedAllBooks = false;
  bool hasFetchedAuthors = false;

  HomeController() {
    addFakeData();
    fetchInitialData();
    _setupPagingListeners();
  }

  void _setupPagingListeners() {
    recommendedPagingController.addPageRequestListener((pageKey) {
      fetchRecommendedBooks(pageKey);
    });
    trendingPagingController.addPageRequestListener((pageKey) {
      fetchTrendingBooks(pageKey);
    });
    allBooksPagingController.addPageRequestListener((pageKey) {
      fetchAllBooks(pageKey);
    });
    authorsPagingController.addPageRequestListener((pageKey) {
      fetchAllAuthors(pageKey);
    });
  }

  void addFakeData() {
    fakeBooks = Bookz.fakeBookz;
    fakeAuthors = Authorz.fakeAuthors;
    isLoading = true;
    notifyListeners();
  }

  Future<void> fetchInitialData() async {
    await fetchRecommendedBooks(1);
    await fetchTrendingBooks(1);
    await fetchAllBooks(1);
    await fetchAllAuthors(1);
  }

  Future<void> fetchRecommendedBooks(int pageKey) async {
    await fetchBooks(
        pageKey, AppConstant.RECOMMENDED_BOOK_URI, recommendedPagingController,
        () {
      hasFetchedRecommended = true;
    });
  }

  Future<void> fetchTrendingBooks(int pageKey) async {
    await fetchBooks(
        pageKey, AppConstant.TRENDING_BOOK_URI, trendingPagingController, () {
      hasFetchedTrending = true;
    });
  }

  Future<void> fetchAllBooks(int pageKey) async {
    await fetchBooks(
        pageKey, AppConstant.ALL_BOOK_URI, allBooksPagingController, () {
      hasFetchedAllBooks = true;
    });
  }

  Future<void> fetchAllAuthors(int pageKey) async {
    await fetchAuthors(pageKey, AppConstant.AUTHORS, authorsPagingController,
        () {
      hasFetchedAuthors = true;
    });
  }

  Future<void> fetchBooks(
      int pageKey,
      String uri,
      PagingController<int, Bookz> pagingController,
      Function onFetchComplete) async {
    if (isFetching) return;

    try {
      isFetching = true;
      notifyListeners();

      final response = await apiClient.getData('$uri?page=$pageKey');
      final jsonData = response['books'] as List<dynamic>?;
      // print("Fetching books from: $uri?page=$pageKey");
      // print("Response: $response");

      if (jsonData == null || jsonData.isEmpty) {
        pagingController.appendLastPage([]);
        // print("No more books to fetch.");
        return;
      }

      final newBooks =
          jsonData.map((bookJson) => Bookz.fromJson(bookJson)).toList();
      final pagination = response['pagination'];
      final totalPages = pagination['totalPages'];
      final currentPage = pagination['currentPage'];

      final isLastPage = currentPage >= totalPages;

      if (isLastPage) {
        pagingController.appendLastPage(newBooks);
        // print("Fetched last page.");
      } else {
        pagingController.appendPage(newBooks, currentPage + 1);
        // print("Fetched page: $pageKey");
      }

      notifyListeners();

      onFetchComplete();
    } catch (error) {
      pagingController.error = error;
      refreshController.refreshFailed();
    } finally {
      if (hasFetchedRecommended &&
          hasFetchedTrending &&
          hasFetchedAllBooks &&
          hasFetchedAuthors) {
        isLoading = false;
        refreshController.refreshCompleted();
      }
      isFetching = false;
      notifyListeners();
    }
  }

  Future<void> fetchAuthors(
      int pageKey,
      String uri,
      PagingController<int, Authorz> pagingController,
      Function onFetchComplete) async {
    if (isFetching) return;

    try {
      isFetching = true;

      final response = await apiClient.getData('$uri?page=$pageKey');
      final jsonData = response['authors'] as List<dynamic>?;

      if (jsonData == null || jsonData.isEmpty) {
        pagingController.appendLastPage([]);
        return;
      }

      final newAuthors =
          jsonData.map((authorJson) => Authorz.fromJson(authorJson)).toList();
      final pagination = response['pagination'];
      final totalPages = pagination['totalPages'];
      final currentPage = pagination['currentPage'];

      final isLastPage = currentPage >= totalPages;

      if (isLastPage) {
        pagingController.appendLastPage(newAuthors);
      } else {
        pagingController.appendPage(newAuthors, currentPage + 1);
      }

      onFetchComplete();
    } catch (error) {
      pagingController.error = error;
      refreshController.refreshFailed();
    } finally {
      if (hasFetchedRecommended &&
          hasFetchedTrending &&
          hasFetchedAllBooks &&
          hasFetchedAuthors) {
        isLoading = false;
        refreshController.refreshCompleted();
      }
      isFetching = false;
      notifyListeners();
    }
  }

  Future<void> refresh() async {
    hasFetchedRecommended = false;
    hasFetchedTrending = false;
    hasFetchedAllBooks = false;
    hasFetchedAuthors = false;

    recommendedPagingController.refresh();
    trendingPagingController.refresh();
    allBooksPagingController.refresh();
    authorsPagingController.refresh();
    addFakeData();
    await fetchInitialData();
  }
}
