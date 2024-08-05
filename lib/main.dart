import 'package:flutter/material.dart';
import 'package:salhurry/Main/screenmain.dart';
import 'package:salhurry/presentation/login%20page/login.dart';
import 'package:salhurry/presentation/splashscreen/splash.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home:
       ScreenMain(),
      // const ScreenLogin(), // Default to login screen since there's no user present.
      routes: {
        '/login': (context) => const ScreenLogin(),
        '/main': (context) => ScreenMain(), // Added route for main screen
      },
    );
  }
}
