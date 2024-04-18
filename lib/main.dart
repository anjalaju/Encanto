import 'package:flutter/material.dart';
import 'package:main_project/ENTREPRENEUR/homepage/bottomnav.dart';
import 'package:main_project/Intropage.dart/Swipe.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
// home: Splash(),
home: Entrebottomnav(indexnum: 0,),
      
    );
  }
}
