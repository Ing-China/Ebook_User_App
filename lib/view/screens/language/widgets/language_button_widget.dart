import 'package:bro_s_journey/helpers/theme_helper.dart';
import 'package:bro_s_journey/utils/icons.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ButtonLanguage extends StatelessWidget {
  final String language;
  final String imageAsset;
  final bool isSelected;
  final VoidCallback onTap;

  const ButtonLanguage({
    super.key,
    required this.language,
    required this.imageAsset,
    required this.isSelected,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.all(15),
        decoration: BoxDecoration(
          color: ThemeHelper.getBackgroundColor(context),
          borderRadius: BorderRadius.circular(10),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.1),
              spreadRadius: 1,
              blurRadius: 1,
              offset: const Offset(1, 1),
            ),
          ],
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Image.asset(
                  imageAsset,
                  width: 50,
                  height: 50,
                ),
                const SizedBox(width: 15),
                Text(
                  language,
                  style: TextStyle(
                    fontSize: 17,
                    color: ThemeHelper.getCanvasColor(context),
                  ),
                ),
              ],
            ),
            SvgPicture.asset(
              isSelected ? CustomIcons.active : CustomIcons.inActive,
              width: 24,
              height: 24,
              color: ThemeHelper.getCanvasColor(context),
            ),
          ],
        ),
      ),
    );
  }
}
