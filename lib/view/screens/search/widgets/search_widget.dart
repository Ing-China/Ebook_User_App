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
              decoration: InputDecoration(
                hintText: "Search Book....",
                prefixIcon: Padding(
                  padding: const EdgeInsets.all(15),
                  child: SvgPicture.asset(
                    CustomIcons.search,
                    color: AppColors.primaryColor,
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
                      color: AppColors.primaryColor,
                    ),
                  ),
                ),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: const BorderSide(
                    color: AppColors.primaryColor,
                  ),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: const BorderSide(
                    color: AppColors.primaryColor,
                    width: 1,
                  ),
                ),
                disabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: BorderSide(
                      color: AppColors.primaryColor.withOpacity(0.3)),
                ),
              ),
            ),
          ),
          GestureDetector(
            onTap: () {
              Navigator.pop(context);
            },
            child: const Padding(
              padding: EdgeInsets.fromLTRB(15, 0, 0, 0),
              child: Text(
                "Cancel",
                style: TextStyle(
                  color: AppColors.primaryColor,
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
