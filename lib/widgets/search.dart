import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:google_drive_clone/helps/helps.dart';

class SearchWidget extends StatelessWidget {
  const SearchWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        vertical: 10,
        horizontal: 20,
      ),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.grey[800],
          borderRadius: BorderRadius.circular(80),
          // shape: BoxShape.circle,
        ),
        height: 45,
        alignment: Alignment.bottomCenter,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            IconButton(
              onPressed: () {
                Scaffold.of(context).openDrawer();
              },
              icon: const Icon(
                Icons.menu,
                // color: Colors.black,
              ),
            ),
            const Expanded(
                child: Text(
              'Search in Drive',
              style: TextStyle(color: Colors.grey, fontSize: 16),
            )),
            Padding(
              padding: const EdgeInsets.only(right: 10.0),
              child: SizedBox(
                height: 30,
                width: 30,
                child: CircleAvatar(
                  backgroundImage: CachedNetworkImageProvider(
                    profileImg.toString(),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
