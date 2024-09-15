import 'package:bro_s_journey/utils/app_constant.dart';
import 'package:bro_s_journey/utils/icons.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class ProductCartWidget extends StatelessWidget {
  final String imageUrl;
  final String name;
  final String authors;
  final String rating;

  const ProductCartWidget({
    super.key,
    required this.imageUrl,
    required this.name,
    required this.authors,
    required this.rating,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 150,
      color: AppColors.whiteColor,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(8.0),
            child: Image.network(
              imageUrl,
              width: double.infinity,
              height: 200,
              fit: BoxFit.cover,
            ),
          ),
          const SizedBox(height: 8.0),
          Text(
            name,
            style: const TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 16,
              color: AppColors.primaryColor,
            ),
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
          ),
          Text(
            authors,
            style: TextStyle(
              color: AppColors.primaryColor.withOpacity(0.3),
              fontSize: 16,
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
                style: const TextStyle(
                    color: AppColors.primaryColor,
                    fontSize: 15,
                    fontWeight: FontWeight.bold),
              ),
            ],
          )
        ],
      ),
    );
  }
}
