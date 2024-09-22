import 'package:bro_s_journey/models/book.dart';
import 'package:flutter/material.dart';

class ImageWidget extends StatelessWidget {
  const ImageWidget({
    super.key,
    required Book? book,
  }) : _book = book;

  final Book? _book;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(0, 30, 0, 30),
      child: Center(
        child: ClipRRect(
          borderRadius: BorderRadius.circular(16.0), // Adjust the radius here
          child: Image.network(
            _book!.imageUrl,
            width: 200,
            height: 300,
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}
