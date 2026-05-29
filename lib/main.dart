import 'package:database_apk/screens/splash_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {    
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      scrollBehavior: const MaterialScrollBehavior().copyWith(
        overscroll: false, // Mematikan efek overscroll secara global
      ),
      home: SplashScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}   
