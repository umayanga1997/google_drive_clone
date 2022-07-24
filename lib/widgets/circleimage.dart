import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:google_drive_clone/helps/helps.dart';

class CircleImage extends StatelessWidget {
  final String image;
  const CircleImage({Key? key, this.image = profileImg}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 30,
      width: 30,
      child: CircleAvatar(
        backgroundImage: CachedNetworkImageProvider(
          image,
        ),
      ),
    );
  }
}
