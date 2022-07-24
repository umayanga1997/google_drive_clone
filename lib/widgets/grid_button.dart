import 'package:flutter/material.dart';
import 'package:google_drive_clone/helps/colors.dart';

class GridButton extends StatelessWidget {
  const GridButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return IconButton(
      constraints: const BoxConstraints(
        maxHeight: 50,
        maxWidth: 50,
      ),
      splashRadius: 25,
      onPressed: () {},
      icon: const Icon(
        Icons.grid_view,
        color: drivenormalgrey,
      ),
    );
  }
}
