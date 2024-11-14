import 'package:bro_s_journey/models/author.dart';
import 'package:bro_s_journey/models/authorz.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class ImageWidget extends StatelessWidget {
  const ImageWidget({
    super.key,
    required Authorz? author,
  }) : _author = author;

  final Authorz? _author;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(0, 30, 0, 30),
      child: Center(
        child: ClipRRect(
          borderRadius: BorderRadius.circular(16.0),
          child: CachedNetworkImage(
            imageUrl: _author!.image!,
            width: 200,
            height: 300,
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}
