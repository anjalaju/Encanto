import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:main_project/Bussines_logic/firebase_options.dart';
import 'package:main_project/Intropage.dart/Swipe.dart';
import 'package:main_project/USER/formscreen/otppage/otp.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,

      home: Splash(),
      // home: welcome(),
      // home: Accpage(),
      // home: Accpage(),
    );
  }
}
