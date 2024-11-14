import 'package:bro_s_journey/helpers/theme_helper.dart';
import 'package:bro_s_journey/utils/app_constant.dart';
import 'package:bro_s_journey/utils/icons.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class SearchWidget extends StatelessWidget {
  const SearchWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        top: 0,
        left: 15,
        right: 15,
        bottom: 15,
      ),
      child: Row(
        children: [
          Expanded(
            child: TextField(
              style: TextStyle(
                color: ThemeHelper.getCanvasColor(context),
              ),
              decoration: InputDecoration(
                hintText: "Search Book....",
                hintStyle: TextStyle(
                  color: ThemeHelper.getCanvasColor(context),
                ),
                prefixIcon: Padding(
                  padding: const EdgeInsets.all(15),
                  child: SvgPicture.asset(
                    CustomIcons.search,
                    color: ThemeHelper.getCanvasColor(context),
                  ),
                ),
                suffixIcon: GestureDetector(
                  onTap: () {
                    print("Filter tapped");
                  },
                  child: Padding(
                    padding: const EdgeInsets.all(15),
                    child: SvgPicture.asset(
                      CustomIcons.fillter,
                      color: ThemeHelper.getCanvasColor(context),
                    ),
                  ),
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: BorderSide(
                    color: ThemeHelper.getCanvasColor(context),
                    width: 1,
                  ),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: BorderSide(
                    color: ThemeHelper.getCanvasColor(context),
                    width: 1,
                  ),
                ),
                disabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: BorderSide(
                    color: ThemeHelper.getCanvasColor(context),
                    width: 1,
                  ),
                ),
              ),
            ),
          ),
          GestureDetector(
            onTap: () {
              Navigator.pop(context);
            },
            child: Padding(
              padding: EdgeInsets.fromLTRB(15, 0, 0, 0),
              child: Text(
                "Cancel",
                style: TextStyle(
                  color: ThemeHelper.getCanvasColor(context),
                  fontSize: 16,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
