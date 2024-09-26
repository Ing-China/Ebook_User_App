import 'package:bro_s_journey/utils/app_constant.dart';
import 'package:bro_s_journey/utils/dimension.dart';
import 'package:bro_s_journey/utils/icons.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

class AllBookCart extends StatelessWidget {
  final int id;
  final String name;
  final String author;
  final String rating;
  final String imageUrl;
  final VoidCallback onTap;

  const AllBookCart({
    super.key,
    required this.id,
    required this.name,
    required this.author,
    required this.rating,
    required this.imageUrl,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      behavior: HitTestBehavior.translucent,
      onTap: onTap,
      child: Row(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(5),
            child: Image.network(
              imageUrl,
              width: 80,
              height: 110,
              fit: BoxFit.cover,
            ),
          ),
          const SizedBox(width: 10),
          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      name,
                      style: TextStyle(
                        fontSize: Dimension.fontSizeLarge(context),
                        fontWeight: FontWeight.bold,
                        color: AppColors.primaryColor,
                      ),
                    ),
                    const SizedBox(height: 5),
                    Text(
                      author,
                      style: TextStyle(
                        fontSize: Dimension.fontSizeLarge(context),
                        color: AppColors.primaryColor.withOpacity(0.3),
                      ),
                    ),
                    const SizedBox(height: 5),
                    Row(
                      children: [
                        SvgPicture.asset(
                          CustomIcons.star,
                          width: 18,
                          height: 18,
                        ),
                        const SizedBox(width: 5),
                        Text(
                          rating,
                          style: TextStyle(
                            fontSize: Dimension.fontSizeDefault(context),
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                Container(
                  padding: const EdgeInsets.fromLTRB(0, 0, 10, 0),
                  child: GestureDetector(
                    onTap: () {},
                    child: SvgPicture.asset(
                      CustomIcons.bookMark,
                    ),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
