import 'package:bro_s_journey/helpers/theme_helper.dart';
import 'package:bro_s_journey/utils/app_constant.dart';
import 'package:bro_s_journey/utils/icons.dart';
import 'package:bro_s_journey/view/screens/search/search_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:page_transition/page_transition.dart';

class Search extends StatelessWidget {
  const Search({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15),
      child: GestureDetector(
        onTap: () {
          print("TextField tapped");
          Navigator.push(
            context,
            PageTransition(
              child: const SearchScreen(),
              type: PageTransitionType.rightToLeft,
            ),
          );
        },
        child: TextField(
          enabled: false,
          decoration: InputDecoration(
            hintText: "Search Book....",
            hintStyle: TextStyle(
              color: ThemeHelper.getCanvasColor(context),
            ),
            suffixIcon: Padding(
              padding: const EdgeInsets.all(15),
              child: SizedBox(
                child: SvgPicture.asset(
                  CustomIcons.search,
                  color: ThemeHelper.getCanvasColor(context),
                ),
              ),
            ),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: BorderSide(
                color: ThemeHelper.getCanvasColor(context),
              ),
            ),
            disabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: BorderSide(
                color: ThemeHelper.getCanvasColor(context),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
