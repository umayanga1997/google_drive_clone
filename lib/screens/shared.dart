import 'package:flutter/material.dart';
import 'package:google_drive_clone/widgets/widgets.dart';

class SharedScreen extends StatefulWidget {
  const SharedScreen({Key? key}) : super(key: key);

  @override
  State<SharedScreen> createState() => _SharedScreenState();
}

class _SharedScreenState extends State<SharedScreen> {
  ScrollController scrollController = ScrollController();

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      physics: const BouncingScrollPhysics(),
      slivers: [
        const AppBarWidget(
          expandedHeigh: 0,
        ),
        SliverToBoxAdapter(
          child: Container(
            width: double.infinity,
            padding: const EdgeInsets.all(10),
            child: Column(
              children: [
                const ListTitle(title: "Share date"),
                ListView.builder(
                  physics: const NeverScrollableScrollPhysics(),
                  itemCount: 20,
                  shrinkWrap: true,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.symmetric(vertical: 10.0),
                      child: SizedBox(
                        width: double.infinity,
                        height: 50,
                        child: Stack(
                          alignment: Alignment.centerLeft,
                          clipBehavior: Clip.antiAlias,
                          children: const [
                            CircleImage(),
                            Positioned(
                              top: 0,
                              bottom: 0,
                              right: 0,
                              left: 25,
                              child: SharedItem(),
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                )
              ],
            ),
          ),
        )
      ],
    );
  }
}
