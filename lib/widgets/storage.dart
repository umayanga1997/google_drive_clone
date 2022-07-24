import 'package:flutter/material.dart';
import 'package:google_drive_clone/helps/colors.dart';
import 'package:google_drive_clone/widgets/widgets.dart';

class StorageTile extends StatelessWidget {
  const StorageTile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const DrawerTile(icon: Icons.cloud_outlined, title: 'Storage'),
          Padding(
            padding: const EdgeInsets.only(left: 25, right: 25),
            child: Stack(
              alignment: Alignment.centerLeft,
              children: [
                Container(
                  width: double.infinity,
                  height: 4,
                  decoration: const BoxDecoration(
                    color: drivelightblue2,
                  ),
                ),
                Container(
                  width: 100,
                  height: 4,
                  decoration: const BoxDecoration(
                    color: drivelightblue,
                  ),
                ),
              ],
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(left: 25, right: 25, top: 10),
            child: Text(
              "8.9 GB 15 GB used",
              style: TextStyle(
                fontSize: 12,
                color: drivenormalgrey,
              ),
              textAlign: TextAlign.start,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 25, right: 25, top: 10),
            child: OutlinedButton(
              onPressed: () {},
              child: const Text(
                "Buy storage",
                style: TextStyle(
                  fontSize: 16,
                  color: drivelightblue,
                ),
              ),
              style: OutlinedButton.styleFrom(
                  padding: const EdgeInsets.symmetric(
                    vertical: 15,
                    horizontal: 20,
                  ),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30))),
            ),
          ),
        ],
      ),
    );
  }
}
