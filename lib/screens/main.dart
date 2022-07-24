import 'package:flutter/material.dart';
import 'package:google_drive_clone/helps/colors.dart';
import 'package:google_drive_clone/screens/files.dart';
import 'package:google_drive_clone/screens/home.dart';
import 'package:google_drive_clone/screens/shared.dart';
import 'package:google_drive_clone/screens/started.dart';
import 'package:google_drive_clone/widgets/widgets.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int selectedIndex = 0;

  final List<Widget> screens = const [
    HomeScreen(),
    StartedScreen(),
    SharedScreen(),
    FilesScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    // final size = MediaQuery.of(context).size;
    return SafeArea(
      // maintainBottomViewPadding: true,
      child: Scaffold(
        body: screens[selectedIndex],
        drawer: Drawer(
          backgroundColor: drivelightgrey,
          child: Column(
            // crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 70,
                width: double.infinity,
                child: DrawerHeader(
                  padding: EdgeInsets.only(
                    top: 15.0,
                    // bottom: 20.0,
                    right: 8.0,
                    left: 25,
                  ),
                  child: Text(
                    "Google Drive",
                    style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.w500,
                    ),
                    textAlign: TextAlign.start,
                  ),
                ),
              ),
              Expanded(
                child: ListView(
                  physics: const BouncingScrollPhysics(),
                  padding: const EdgeInsets.only(
                    top: 10,
                    // left: 15,
                  ),
                  children: const [
                    DrawerTile(icon: Icons.schedule_outlined, title: 'Recent'),
                    DrawerTile(
                        icon: Icons.offline_pin_outlined, title: 'Offline'),
                    DrawerTile(icon: Icons.delete_outline, title: 'Trush'),
                    DrawerTile(icon: Icons.backup_outlined, title: 'Backups'),
                    DrawerTile(
                        icon: Icons.settings_outlined, title: 'Settings'),
                    DrawerTile(
                        icon: Icons.help_outline, title: 'Help & feedback'),
                    StorageTile(),
                  ],
                ),
              ),
            ],
          ),
        ),
        bottomNavigationBar: NavigationBarTheme(
          data: NavigationBarThemeData(
            indicatorColor: driveblue,
            height: 80,
            labelTextStyle: MaterialStateProperty.all(
              const TextStyle(
                fontWeight: FontWeight.w700,
              ),
            ),
          ),
          child: NavigationBar(
            // height: 60,
            animationDuration: const Duration(milliseconds: 400),
            onDestinationSelected: (value) {
              setState(() {
                selectedIndex = value;
              });
            },
            destinations: const [
              NavigationDestination(
                icon: Icon(Icons.home_outlined),
                selectedIcon: Icon(Icons.home),
                label: 'Home',
              ),
              NavigationDestination(
                icon: Icon(Icons.star_border),
                selectedIcon: Icon(Icons.star),
                label: 'Started',
              ),
              NavigationDestination(
                icon: Icon(Icons.group_outlined),
                selectedIcon: Icon(Icons.group),
                label: 'Shared',
              ),
              NavigationDestination(
                icon: Icon(Icons.folder_outlined),
                selectedIcon: Icon(Icons.folder),
                label: 'Files',
              ),
            ],
            selectedIndex: selectedIndex,
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            showModalBottomSheet(
              context: context,
              backgroundColor: drivelightgrey,
              enableDrag: true,
              clipBehavior: Clip.antiAlias,
              // constraints: BoxConstraints.tight(Size(double.infinity, 350)),
              constraints: const BoxConstraints(
                maxHeight: 300,
              ),
              shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(30),
                  topRight: Radius.circular(30),
                ),
              ),
              builder: (context) {
                return Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      height: 70,
                      alignment: Alignment.center,
                      padding: const EdgeInsets.only(top: 30.0),
                      child: const Text(
                        "Create New",
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w500,
                          color: drivenormalgrey,
                        ),
                      ),
                    ),
                    Expanded(
                      child: Container(
                        width: double.infinity,
                        padding: const EdgeInsets.symmetric(horizontal: 15),
                        child: Wrap(
                          alignment: WrapAlignment.spaceBetween,
                          runSpacing: -20,
                          children: const [
                            BottomSheetButtom(
                              name: 'Home',
                              icon: Icons.home,
                            ),
                            BottomSheetButtom(
                              name: 'Upload',
                              icon: Icons.file_upload,
                            ),
                            BottomSheetButtom(
                                name: 'Scan', icon: Icons.camera_alt_outlined),
                            BottomSheetButtom(
                              name: 'Google Docs',
                              icon: Icons.article,
                              color: drivelightblue,
                            ),
                            BottomSheetButtom(
                              name: 'Google Sheets',
                              icon: MdiIcons.googleSpreadsheet,
                              color: Colors.greenAccent,
                            ),
                            BottomSheetButtom(
                              name: 'Google Slides',
                              icon: MdiIcons.filePresentationBox,
                              color: Colors.orangeAccent,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                );
              },
            );
          },
          backgroundColor: driveblue,
          foregroundColor: Colors.white,
          child: const Icon(
            Icons.add,
            size: 28,
          ),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15),
          ),
        ),
      ),
    );
  }
}
