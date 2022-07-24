import 'package:flutter/material.dart';
import 'ResposiveFolder/ResponsiveLayoutMain.dart';
import 'ResposiveFolder/MobileScafold.dart';
import 'ResposiveFolder/TabletScafold.dart';
import 'ResposiveFolder/WindowsScafold.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ResponsiveLayoutMain(
        MobilScafold: const MobilScafold(),
        TabletScafold: const TabletScafold(),
        WindowsScafold: const WindowsScafold(),
      ),
    );
  }
}