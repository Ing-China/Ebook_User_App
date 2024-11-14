import 'package:bro_s_journey/helpers/theme_helper.dart';
import 'package:bro_s_journey/utils/app_constant.dart';
import 'package:bro_s_journey/utils/dimension.dart';
import 'package:flutter/material.dart';

class ButtonLabel extends StatelessWidget {
  final String label;
  final String action_label;

  const ButtonLabel({
    super.key,
    required this.label,
    required this.action_label,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.fromLTRB(15, 15, 15, 15),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            label,
            style: TextStyle(
              color: ThemeHelper.getCanvasColor(context),
              fontWeight: FontWeight.bold,
              fontSize: Dimension.fontSizeExtraLarge(context),
            ),
          ),
          GestureDetector(
            onTap: () {
              print('See More clicked');
            },
            child: Text(
              action_label,
              style: TextStyle(
                color: ThemeHelper.getCanvasColor(context).withOpacity(0.3),
                fontSize: Dimension.fontSizeLarge(context),
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
