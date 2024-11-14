import 'package:bro_s_journey/helpers/theme_helper.dart';
import 'package:bro_s_journey/models/book.dart';
import 'package:bro_s_journey/models/bookz.dart';
import 'package:bro_s_journey/utils/app_constant.dart';
import 'package:flutter/material.dart';

class Description extends StatelessWidget {
  const Description({
    super.key,
    required Bookz? book,
  }) : _book = book;

  final Bookz? _book;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 100),
      child: Container(
        padding: const EdgeInsets.fromLTRB(15, 20, 15, 0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Overviewing',
              style: TextStyle(
                fontSize: 20,
                color: ThemeHelper.getCanvasColor(context),
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 10),
            Text(
              _book!.description!,
              style: TextStyle(
                color: ThemeHelper.getCanvasColor(context).withOpacity(0.5),
                fontSize: 16,
              ),
            )
          ],
        ),
      ),
    );
  }
}
