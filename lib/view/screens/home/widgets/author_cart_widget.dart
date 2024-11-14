import 'package:bro_s_journey/helpers/theme_helper.dart';
import 'package:bro_s_journey/utils/app_constant.dart';
import 'package:bro_s_journey/utils/dimension.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class AuthorCartWidget extends StatelessWidget {
  final String id;
  final String name;
  final String imageUrl;
  final VoidCallback onTap;

  const AuthorCartWidget({
    super.key,
    required this.id,
    required this.name,
    required this.imageUrl,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: Dimension.screenWidthPercentage(context, 0.3),
        color: ThemeHelper.getPrimaryColor(context),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(8),
              child: CachedNetworkImage(
                imageUrl: imageUrl,
                width: double.infinity,
                height: 110,
                fit: BoxFit.cover,
              ),
            ),
            const SizedBox(height: 5),
            Text(
              name,
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
              style: TextStyle(
                fontSize: Dimension.fontSizeLarge(context),
                color: ThemeHelper.getCanvasColor(context),
                fontWeight: FontWeight.bold,
              ),
            )
          ],
        ),
      ),
    );
  }
}
