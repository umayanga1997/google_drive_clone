import 'package:flutter/material.dart';
import 'package:google_drive_clone/helps/colors.dart';
import 'package:google_drive_clone/widgets/widgets.dart';

class AppBarTabBar extends StatelessWidget {
  final TabController tabController;
  final List<Tab> tabs;
  final double expandedHeigh;
  const AppBarTabBar(
      {Key? key,
      required this.tabController,
      this.tabs = const [],
      this.expandedHeigh = 120})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      expandedHeight: expandedHeigh,
      collapsedHeight: 60,
      floating: false,
      pinned: true,
      automaticallyImplyLeading: false,
      // backgroundColor: drivegrey,
      bottom: PreferredSize(
        preferredSize: const Size.fromHeight(0),
        child: Container(
          height: 60,
          decoration: const BoxDecoration(
              border: Border(
            bottom: BorderSide(
              width: 1,
              color: drivelightgrey,
              style: BorderStyle.solid,
            ),
          )),
          child: TabBar(
            indicatorSize: TabBarIndicatorSize.label,
            controller: tabController,
            indicatorWeight: 3,
            indicatorColor: drivelightblue,
            labelColor: drivelightblue,
            padding: const EdgeInsets.only(top: 8),
            unselectedLabelColor: Colors.grey,
            tabs: [...tabs],
          ),
        ),
      ),
      title: const SearchWidget(),
    );
  }
}

class AppBarWidget extends StatelessWidget {
  final double expandedHeigh;
  const AppBarWidget({Key? key, this.expandedHeigh = 120}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      expandedHeight: expandedHeigh,
      collapsedHeight: 60,
      automaticallyImplyLeading: false,
      floating: false,
      pinned: true,
      // backgroundColor: drivegrey,
      title: const SearchWidget(),
    );
  }
}
