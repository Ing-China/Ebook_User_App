import 'package:bro_s_journey/helpers/theme_helper.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';

class PullToRefreshHeader extends StatelessWidget {
  final RefreshStatus? status;

  const PullToRefreshHeader({super.key, this.status});

  @override
  Widget build(BuildContext context) {
    Widget headerWidget;
    switch (status) {
      case RefreshStatus.refreshing:
        headerWidget = Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            SizedBox(
              width: 50,
              child: CupertinoActivityIndicator(
                radius: 13,
                color: ThemeHelper.getCanvasColor(context),
              ),
            ),
            Text(
              "Refreshing...",
              style: TextStyle(color: ThemeHelper.getCanvasColor(context)),
            ),
          ],
        );
        break;
      // case RefreshStatus.completed:
      //   headerWidget = Text("Refresh completed");
      //   break;
      case RefreshStatus.failed:
        headerWidget = Text(
          "Refresh failed! Click retry!",
          style: TextStyle(color: ThemeHelper.getCanvasColor(context)),
        );
        break;
      case RefreshStatus.canRefresh:
        headerWidget = Text(
          "Release to refresh",
          style: TextStyle(color: ThemeHelper.getCanvasColor(context)),
        );
        break;
      case RefreshStatus.idle:
      default:
        headerWidget = Text(
          "Pull down to refresh",
          style: TextStyle(color: ThemeHelper.getCanvasColor(context)),
        );
        break;
    }
    return SizedBox(
      height: 25,
      child: Center(child: headerWidget),
    );
  }
}
