import 'package:bro_s_journey/utils/app_constant.dart';
import 'package:bro_s_journey/utils/dimension.dart';
import 'package:bro_s_journey/utils/icons.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class HomeHeaderWidget extends StatelessWidget {
  const HomeHeaderWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            ClipOval(
              child: Image.network(
                'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSvtzvNMA1yIpHJiUyDlqSq43PF2_shNlrMyg&s',
                width: 80,
                height: 80,
                fit: BoxFit.cover,
              ),
            ),
            const SizedBox(width: 10),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Kioway",
                  style: TextStyle(
                    color: AppColors.primaryColor,
                    fontSize: Dimension.fontSizeExtraLarge(context),
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  "Welcome back!",
                  style: TextStyle(
                      color: AppColors.primaryColor.withOpacity(0.3),
                      fontSize: Dimension.fontSizeExtraLarge(context),
                      fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ],
        ),
        Container(
          width: 40,
          height: 40,
          decoration: const BoxDecoration(
            color: AppColors.primaryColor,
            shape: BoxShape.circle,
          ),
          child: IconButton(
            icon: SvgPicture.asset(
              CustomIcons.notification,
              width: 25,
              height: 25,
              color: AppColors.whiteColor,
            ),
            onPressed: () {
              print('Notification Click');
            },
          ),
        ),
      ],
    );
  }
}
