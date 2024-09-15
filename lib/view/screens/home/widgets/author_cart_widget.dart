import 'package:bro_s_journey/utils/app_constant.dart';
import 'package:bro_s_journey/utils/dimension.dart';
import 'package:flutter/material.dart';

class AuthorCartWidget extends StatelessWidget {
  final String name;
  final String imageUrl;

  const AuthorCartWidget(
      {super.key, required this.name, required this.imageUrl});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: Dimension.screenWidthPercentage(context, 0.3),
      color: AppColors.whiteColor,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(8),
            child: Image.network(
              imageUrl,
              width: double.infinity,
              height: 100,
              fit: BoxFit.cover,
            ),
          ),
          const SizedBox(height: 5),
          Text(
            name,
            style: TextStyle(
                fontSize: 16,
                color: AppColors.primaryColor.withOpacity(0.5),
                fontWeight: FontWeight.bold),
          )
        ],
      ),
    );
  }
}
