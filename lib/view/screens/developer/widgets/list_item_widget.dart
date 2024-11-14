import 'package:bro_s_journey/helpers/theme_helper.dart';
import 'package:bro_s_journey/providers/theme_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

Widget buildProfileOptionRow(
  BuildContext context,
  String title,
  String? icon, {
  bool showRightArrow = true,
  VoidCallback? onTap,
  bool showSwitch = false,
  bool light = false,
  ValueChanged<bool>? onSwitchChanged,
}) {
  return GestureDetector(
    onTap: onTap,
    child: Container(
      decoration: BoxDecoration(
        color: ThemeHelper.getGreyShade50(context),
        borderRadius: BorderRadius.circular(10),
      ),
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: SizedBox(
        height: 55,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                if (icon != null)
                  SvgPicture.asset(
                    icon,
                    width: 24,
                    height: 24,
                    color: ThemeHelper.getCanvasColor(context),
                  ),
                SizedBox(width: icon != null ? 15 : 0),
                Text(
                  title,
                  style: TextStyle(
                    fontSize: 18,
                    color: ThemeHelper.getCanvasColor(context),
                  ),
                ),
              ],
            ),
            if (showSwitch)
              Transform.scale(
                scale: 0.8,
                child: Switch.adaptive(
                  value: light,
                  inactiveTrackColor: Colors.grey.withOpacity(0.5),
                  activeColor: Colors.grey.withOpacity(0.5),
                  inactiveThumbColor: ThemeHelper.getCanvasColor(context),
                  onChanged: (bool value) {
                    if (onSwitchChanged != null) {
                      onSwitchChanged(value);
                    }
                  },
                ),
              )
            else if (showRightArrow)
              Icon(
                Icons.arrow_forward_ios,
                color: ThemeHelper.getCanvasColor(context),
              ),
          ],
        ),
      ),
    ),
  );
}
