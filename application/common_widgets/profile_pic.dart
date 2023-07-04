import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class ProfilePic extends StatelessWidget {
  String URL;
  double size = 40;

  ProfilePic({required this.URL, required this.size});

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(45.0),
      child: CachedNetworkImage(
        width: size,
        height: size,
        imageUrl: URL,
        fit: BoxFit.cover,
        placeholder: (context, url) => CircularProgressIndicator(),
        errorWidget: (context, url, error) => Icon(Icons.error), // Optional error widget
      ),
    );
  }

  static Widget network({required String URL, required double size}) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(45.0),
      child: Image.network(
        URL,
        width: size,
        height: size,
        fit: BoxFit.cover,
      ),
    );
  }

  static Widget asset({required String assetName, required double size}) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(45.0),
      child: Image.asset(
        assetName,
        width: size,
        height: size,
        fit: BoxFit.cover,
      ),
    );
  }
}

