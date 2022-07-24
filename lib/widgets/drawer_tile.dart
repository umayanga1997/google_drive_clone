import 'package:flutter/material.dart';
import 'package:google_drive_clone/helps/colors.dart';

class DrawerTile extends StatelessWidget {
  final IconData icon;
  final String title;
  const DrawerTile({Key? key, required this.icon, required this.title})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      selectedTileColor: driveblue,
      // selectedColor: driveblue,
      dense: true,
      leading: Icon(
        icon,
        color: drivenormalgrey,
        size: 25,
      ),
      contentPadding: const EdgeInsets.only(left: 25),
      title: Text(
        title,
        style: const TextStyle(
          fontSize: 16,
          color: drivenormalgrey,
        ),
      ),
      onTap: () {},
    );
  }
}
