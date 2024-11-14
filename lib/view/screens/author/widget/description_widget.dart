import 'package:bro_s_journey/helpers/theme_helper.dart';
import 'package:bro_s_journey/models/author.dart';
import 'package:bro_s_journey/models/authorz.dart';
import 'package:flutter/material.dart';

class Description extends StatelessWidget {
  const Description({
    super.key,
    required Authorz? author,
  }) : _author = author;

  final Authorz? _author;

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
              _author!.bio!,
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
