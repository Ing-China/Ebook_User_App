import 'package:bro_s_journey/helpers/theme_helper.dart';
import 'package:bro_s_journey/models/author.dart';
import 'package:bro_s_journey/models/authorz.dart';
import 'package:bro_s_journey/utils/icons.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class AuthorDetailWidget extends StatelessWidget {
  final Authorz? _author;

  const AuthorDetailWidget({
    super.key,
    required Authorz? author,
  }) : _author = author;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: ThemeHelper.getPrimaryColor(context),
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
                    // SvgPicture.asset(
                    //   CustomIcons.star,
                    //   width: 18,
                    //   height: 18,
                    // ),
                    // const SizedBox(width: 5),
                    Text(
                      _author!.age!,
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: ThemeHelper.getCanvasColor(context),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 10),
                Text(
                  'Age',
                  style: TextStyle(
                    fontSize: 16,
                    color: ThemeHelper.getCanvasColor(context).withOpacity(0.3),
                  ),
                )
              ],
            ),
          ),
          Container(
            height: 50,
            width: 1,
            color: ThemeHelper.getCanvasColor(context).withOpacity(0.3),
          ),
          Expanded(
            child: Column(
              children: [
                Text(
                  _author.bookType!.name ?? 'China',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: ThemeHelper.getCanvasColor(context),
                  ),
                ),
                const SizedBox(height: 10),
                Text(
                  'Book Type',
                  style: TextStyle(
                    fontSize: 16,
                    color: ThemeHelper.getCanvasColor(context).withOpacity(0.3),
                  ),
                )
              ],
            ),
          ),
          Container(
            height: 50,
            width: 1,
            color: ThemeHelper.getCanvasColor(context).withOpacity(0.3),
          ),
          Expanded(
            child: Column(
              children: [
                Text(
                  _author!.bookCount!,
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: ThemeHelper.getCanvasColor(context),
                  ),
                ),
                const SizedBox(height: 10),
                Text(
                  'Book Count',
                  style: TextStyle(
                    fontSize: 16,
                    color: ThemeHelper.getCanvasColor(context).withOpacity(0.3),
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
