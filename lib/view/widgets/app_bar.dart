import 'package:bro_s_journey/helpers/theme_helper.dart';
import 'package:bro_s_journey/utils/app_constant.dart';
import 'package:bro_s_journey/utils/icons.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CustomAppBar extends StatefulWidget implements PreferredSizeWidget {
  final String title;
  final bool showBookMarkButton;

  const CustomAppBar({
    Key? key,
    required this.title,
    this.showBookMarkButton = false,
  }) : super(key: key);

  @override
  State<CustomAppBar> createState() => _CustomAppBarState();

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}

class _CustomAppBarState extends State<CustomAppBar> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.1 / 0.5),
            spreadRadius: 1,
            blurRadius: 2,
            offset: Offset(0, -2),
          ),
        ],
      ),
      child: AppBar(
        iconTheme: IconThemeData(color: ThemeHelper.getCanvasColor(context)),
        title: Text(
          widget.title,
          style: TextStyle(
            color: ThemeHelper.getCanvasColor(context),
            fontWeight: FontWeight.bold,
            fontSize: 20,
          ),
        ),
        centerTitle: true,
        actions: [
          if (widget.showBookMarkButton)
            Padding(
              padding: const EdgeInsets.only(right: 16.0),
              child: GestureDetector(
                onTap: () {
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(content: Text('${widget.title} bookmarked!')),
                  );
                },
                child: SizedBox(
                  child: SvgPicture.asset(
                    CustomIcons.bookMark,
                    width: 17,
                    height: 20,
                    color: AppColors.primaryColor,
                  ),
                ),
              ),
            ),
        ],
        backgroundColor: ThemeHelper.getPrimaryColor(context),
        scrolledUnderElevation: 0,
      ),
    );
  }
}
