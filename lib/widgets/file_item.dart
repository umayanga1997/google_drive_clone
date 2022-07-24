import 'package:flutter/material.dart';
import 'package:google_drive_clone/helps/colors.dart';
import 'package:google_drive_clone/widgets/widgets.dart';

class FileItem extends StatelessWidget {
  const FileItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 60,
      width: double.infinity,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Icon(
            Icons.folder,
            size: 25,
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.only(left: 12.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Flexible(
                    child: Text(
                      'My Files',
                      style: TextStyle(
                        color: drivenormalgrey,
                        fontSize: 16,
                      ),
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                  Flexible(
                    child: Padding(
                      padding: EdgeInsets.only(
                        top: 4,
                      ),
                      child: Text(
                        'Mr.Sanath - Apr 23',
                        style: TextStyle(
                          fontSize: 12,
                          color: drivenormalgrey,
                        ),
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
          const VerticaleDotButton(),
        ],
      ),
    );
  }
}
