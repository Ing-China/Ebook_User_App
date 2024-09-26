import 'package:bro_s_journey/utils/app_constant.dart';
import 'package:bro_s_journey/utils/dimension.dart';
import 'package:bro_s_journey/utils/icons.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class HomeHeaderWidget extends StatelessWidget {
  const HomeHeaderWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(15, 15, 15, 0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              ClipOval(
                child: CachedNetworkImage(
                  imageUrl:
                      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSvtzvNMA1yIpHJiUyDlqSq43PF2_shNlrMyg&s',
                  errorWidget: (context, url, error) => Icon(Icons.error),
                  width: 90,
                  height: 90,
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
          // Container(
          //   width: 35,
          //   height: 35,
          //   decoration: const BoxDecoration(
          //     color: AppColors.primaryColor,
          //     shape: BoxShape.circle,
          //   ),
          //   child: IconButton(
          //     icon: SvgPicture.asset(
          //       CustomIcons.edit,
          //       width: 20,
          //       height: 20,
          //       color: AppColors.whiteColor,
          //     ),
          //     onPressed: () {
          //       print('Edit Profile Click');
          //     },
          //   ),
          // ),
        ],
      ),
    );
  }
}
