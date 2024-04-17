import 'package:flutter/material.dart';
import 'package:main_project/ENTREPRENEUR/homepage/bottomnav.dart';
import 'package:main_project/ENTREPRENEUR/homepage/homepage.dart';
import 'package:main_project/Intropage.dart/Swipe.dart';
import 'package:main_project/USER/homepage/account.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      

      // home: Accountpage(),
      home: Splash(),
      
    );
  }
}
