import 'package:bro_s_journey/helpers/theme_helper.dart';
import 'package:bro_s_journey/utils/app_constant.dart';
import 'package:flutter/material.dart';

class PrimaryButton extends StatelessWidget {
  final String title;
  final VoidCallback onTap;

  const PrimaryButton({
    super.key,
    required this.title,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 15),
        alignment: Alignment.center,
        decoration: BoxDecoration(
          color: ThemeHelper.getCanvasColor(context),
          borderRadius: BorderRadius.circular(10),
        ),
        child: Text(
          title,
          style: TextStyle(
            fontSize: 16,
            color: ThemeHelper.getPrimaryColor(context),
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
