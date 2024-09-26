import 'package:bro_s_journey/utils/app_constant.dart';
import 'package:bro_s_journey/utils/dimension.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

Widget buildProfileOptionRow(
  String title,
  String? icon, {
  bool showRightArrow = true,
  VoidCallback? onTap,
}) {
  return GestureDetector(
    onTap: onTap,
    child: Container(
      decoration: BoxDecoration(
        color: Colors.grey.shade100,
        borderRadius: BorderRadius.circular(10),
      ),
      padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 15),
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
                ),
              SizedBox(width: icon != null ? 15 : 0),
              Text(
                title,
                style: const TextStyle(
                  fontSize: 18,
                ),
              ),
            ],
          ),
          if (showRightArrow)
            Icon(
              Icons.arrow_forward_ios,
              color: AppColors.primaryColor.withOpacity(0.3),
            ),
        ],
      ),
    ),
  );
}
