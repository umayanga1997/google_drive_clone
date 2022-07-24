import 'package:flutter/material.dart';
import 'package:google_drive_clone/widgets/widgets.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen>
    with SingleTickerProviderStateMixin {
  late TabController _tabcontroller;

  @override
  void initState() {
    super.initState();
    _tabcontroller = TabController(length: 2, vsync: this);
  }

  @override
  void dispose() {
    super.dispose();
    _tabcontroller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return NestedScrollView(
      headerSliverBuilder: (context, innerBoxIsScrolled) {
        return [
          AppBarTabBar(
            tabController: _tabcontroller,
            tabs: const [
              Tab(
                text: 'Suggesed',
              ),
              Tab(
                text: 'Notifications',
              ),
            ],
          ),
        ];
      },
      body: TabBarView(
        controller: _tabcontroller,
        children: [
          ListView.builder(
            itemCount: 10,
            physics: const BouncingScrollPhysics(),
            itemBuilder: (context, index) {
              return const HomeDataCard();
            },
            padding: const EdgeInsets.only(top: 12),
          ),
          Container(),
        ],
      ),
    );
  }
}
