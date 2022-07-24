import 'package:flutter/material.dart';
import 'package:google_drive_clone/helps/colors.dart';
import 'package:google_drive_clone/screens/main.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Google Drive Clone',
      // theme: ThemeData(
      //   fontFamily: "Ubuntu",
      // ),
      darkTheme: ThemeData.dark().copyWith(
        backgroundColor: drivegrey,
        bottomAppBarTheme: const BottomAppBarTheme(
          color: drivelightgrey,
        ),
        appBarTheme: const AppBarTheme(
          backgroundColor: drivegrey,
        ),
        drawerTheme: const DrawerThemeData(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
              topRight: Radius.circular(20),
              bottomRight: Radius.circular(20),
            ),
          ),
        ),
        scaffoldBackgroundColor: drivegrey,
      ),
      debugShowCheckedModeBanner: false,
      home: DefaultTextStyle(
        style: TextStyle(
          fontFamily: GoogleFonts.ubuntu().fontFamily,
        ),
        child: const MainScreen(),
      ),
    );
  }
}
