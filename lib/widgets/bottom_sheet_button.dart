import 'package:flutter/material.dart';
import 'package:google_drive_clone/helps/colors.dart';

class BottomSheetButtom extends StatelessWidget {
  final String name;
  final IconData icon;
  final Color color;
  const BottomSheetButtom(
      {Key? key,
      required this.name,
      required this.icon,
      this.color = drivenormalgrey})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return InkWell(
      onTap: () {},
      borderRadius: BorderRadius.circular(100),
      child: SizedBox(
        width: size.width / 3.5,
        height: size.width / 3.5,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              padding: const EdgeInsets.all(15),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(100),
                border: Border.all(
                  color: drivenormalgrey,
                  width: 1,
                  style: BorderStyle.solid,
                ),
              ),
              child: Icon(
                icon,
                size: 20,
                color: color,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Text(
              name,
              style: const TextStyle(
                color: drivenormalgrey,
                fontSize: 15,
              ),
            )
          ],
        ),
      ),
    );
  }
}
