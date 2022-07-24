import 'package:flutter/material.dart';
import 'package:google_drive_clone/widgets/file_item.dart';
import 'package:google_drive_clone/widgets/widgets.dart';

class FilesScreen extends StatefulWidget {
  const FilesScreen({Key? key}) : super(key: key);

  @override
  State<FilesScreen> createState() => _FilesScreenState();
}

class _FilesScreenState extends State<FilesScreen>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 2, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return NestedScrollView(
      headerSliverBuilder: (context, innerBoxIsScrolled) {
        return [
          AppBarTabBar(
            tabController: _tabController,
            tabs: const [
              Tab(
                text: 'My Drive',
              ),
              Tab(
                text: 'Computers',
              ),
            ],
          )
        ];
      },
      body: TabBarView(
        controller: _tabController,
        children: [
          ListView.builder(
            itemCount: 10,
            padding: const EdgeInsets.all(10),
            physics: const BouncingScrollPhysics(),
            itemBuilder: (context, index) {
              return const FileItem();
            },
          ),
          Container(),
        ],
      ),
    );
  }
}
