import 'package:bro_s_journey/models/book.dart';
import 'package:bro_s_journey/utils/app_constant.dart';
import 'package:bro_s_journey/utils/icons.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class BookDetail extends StatelessWidget {
  const BookDetail({
    super.key,
    required Book? book,
  }) : _book = book;

  final Book? _book;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppColors.whiteColor,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Expanded(
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SvgPicture.asset(
                      CustomIcons.star,
                      width: 18,
                      height: 18,
                    ),
                    const SizedBox(width: 5),
                    Text(
                      _book!.rating,
                      style: const TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: AppColors.primaryColor,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 10),
                Text(
                  'Ratting',
                  style: TextStyle(
                    fontSize: 16,
                    color: AppColors.primaryColor.withOpacity(0.3),
                  ),
                )
              ],
            ),
          ),
          Container(
            height: 50,
            width: 1,
            color: AppColors.primaryColor.withOpacity(0.3),
          ),
          Expanded(
            child: Column(
              children: [
                Text(
                  _book!.languageType,
                  style: const TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: AppColors.primaryColor,
                  ),
                ),
                const SizedBox(height: 10),
                Text(
                  'Language',
                  style: TextStyle(
                    fontSize: 16,
                    color: AppColors.primaryColor.withOpacity(0.3),
                  ),
                )
              ],
            ),
          ),
          Container(
            height: 50,
            width: 1,
            color: AppColors.primaryColor.withOpacity(0.3),
          ),
          Expanded(
            child: Column(
              children: [
                Text(
                  _book!.pages,
                  style: const TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: AppColors.primaryColor,
                  ),
                ),
                const SizedBox(height: 10),
                Text(
                  'Pages',
                  style: TextStyle(
                    fontSize: 16,
                    color: AppColors.primaryColor.withOpacity(0.3),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
