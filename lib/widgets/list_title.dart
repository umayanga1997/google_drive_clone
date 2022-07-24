import 'package:flutter/material.dart';
import 'package:google_drive_clone/helps/colors.dart';
import 'package:google_drive_clone/widgets/grid_button.dart';

class ListTitle extends StatelessWidget {
  final String title;
  const ListTitle({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        GestureDetector(
          onTap: () {},
          child: Row(
            children: [
              Text(
                title,
                style: const TextStyle(
                  color: drivenormalgrey,
                  fontSize: 16,
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(left: 4.0),
                child: Icon(
                  Icons.arrow_downward,
                  color: drivenormalgrey,
                  size: 20,
                ),
              )
            ],
          ),
        ),
        const GridButton()
      ],
    );
  }
}
