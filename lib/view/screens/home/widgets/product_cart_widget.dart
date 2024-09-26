import 'package:bro_s_journey/utils/app_constant.dart';
import 'package:bro_s_journey/utils/dimension.dart';
import 'package:bro_s_journey/utils/icons.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class ProductCartWidget extends StatelessWidget {
  final int id;
  final String imageUrl;
  final String name;
  final String authors;
  final String rating;
  final VoidCallback onTap;
  final double imageHeight;

  const ProductCartWidget({
    super.key,
    required this.id,
    required this.imageUrl,
    required this.name,
    required this.authors,
    required this.rating,
    required this.onTap,
    required this.imageHeight,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: 150,
        color: AppColors.whiteColor,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(8.0),
              child: CachedNetworkImage(
                imageUrl: imageUrl,
                errorWidget: (context, url, error) => Icon(Icons.error),
                width: double.infinity,
                height: imageHeight,
                fit: BoxFit.cover,
              ),
            ),
            const SizedBox(height: 8.0),
            Text(
              name,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: Dimension.fontSizeLarge(context),
                color: AppColors.primaryColor,
              ),
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
            ),
            Text(
              authors,
              style: TextStyle(
                color: AppColors.primaryColor.withOpacity(0.3),
                fontSize: Dimension.fontSizeLarge(context),
              ),
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SvgPicture.asset(
                  CustomIcons.star,
                  width: 17,
                  height: 17,
                ),
                const SizedBox(width: 5),
                Text(
                  rating,
                  style: TextStyle(
                    color: AppColors.primaryColor,
                    fontSize: Dimension.fontSizeDefault(context),
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
