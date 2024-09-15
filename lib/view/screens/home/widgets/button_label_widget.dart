import 'package:bro_s_journey/utils/app_constant.dart';
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
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          label,
          style: const TextStyle(
            color: AppColors.primaryColor,
            fontWeight: FontWeight.bold,
            fontSize: 18,
          ),
        ),
        GestureDetector(
          onTap: () {
            print('See More clicked');
          },
          child: Text(
            action_label,
            style: TextStyle(
              color: AppColors.primaryColor.withOpacity(0.3),
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ],
    );
  }
}
