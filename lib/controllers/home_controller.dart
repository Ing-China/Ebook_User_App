import 'package:flutter/material.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';

class HomeController extends ChangeNotifier {
  bool isLoading = true;
  final RefreshController refreshController =
      RefreshController(initialRefresh: false);

  HomeController() {
    loadData();
  }

  Future<void> loadData() async {
    // isLoading = true;
    notifyListeners(); // Notify UI to show loading state.
    await Future.delayed(const Duration(seconds: 5)); // Simulate data loading.
    isLoading = false;
    notifyListeners(); // Notify UI to hide loading state.
  }

  Future<void> refresh() async {
    await loadData();
    refreshController.refreshCompleted(); // Stop the refresh animation.
  }

  @override
  void dispose() {
    refreshController.dispose();
    super.dispose();
  }
}
