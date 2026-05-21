import 'package:flutter/material.dart';
import 'screens/main_navigation.dart';

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
      home: MainNavigation(),
      debugShowCheckedModeBanner: false,
    );
  }
}
