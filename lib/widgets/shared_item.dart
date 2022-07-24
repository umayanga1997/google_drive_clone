import 'package:flutter/material.dart';
import 'package:google_drive_clone/helps/colors.dart';
import 'package:google_drive_clone/widgets/widgets.dart';

class SharedItem extends StatelessWidget {
  const SharedItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          height: 35,
          width: 35,
          alignment: Alignment.center,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(100),
            color: drivelightgrey,
          ),
          child: const Icon(
            Icons.movie,
            size: 20,
          ),
        ),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.only(left: 8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Flexible(
                  child: Text(
                    'Super Hist Movie.mp4',
                    style: TextStyle(
                      color: drivenormalgrey,
                      fontSize: 16,
                    ),
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                    top: 4,
                  ),
                  child: Row(
                    children: const [
                      Icon(
                        Icons.group,
                        size: 12,
                        color: drivenormalgrey,
                      ),
                      Flexible(
                        child: Padding(
                          padding: EdgeInsets.only(
                            left: 4,
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
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
        const VerticaleDotButton(),
      ],
    );
  }
}
