// lib/screens/main_navigation.dart
import 'package:flutter/material.dart';
import 'home_screen.dart';
import 'prayer_schedule_screen.dart';
import 'doa_list_screen.dart';
import 'article_screen.dart'; // 1. Import Halaman Artikel Baru

class MainNavigation extends StatefulWidget {
  const MainNavigation({Key? key}) : super(key: key);

  @override
  State<MainNavigation> createState() => _MainNavigationState();
}

class _MainNavigationState extends State<MainNavigation> {
  int _currentIndex = 0;

  final List<Widget> _screens = [
    const HomeScreen(),            
    const PrayerScheduleScreen(),  
    const DoaListScreen(),         
    const ArticleScreen(), // 2. Ganti Scaffold dummy lama dengan halaman ini
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        index: _currentIndex,
        children: _screens,
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        selectedItemColor: const Color(0xFF2E7D32),
        unselectedItemColor: Colors.grey,
        currentIndex: _currentIndex,
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.mosque), label: 'Sholat'),
          BottomNavigationBarItem(icon: Icon(Icons.front_hand), label: 'Amalan'),
          BottomNavigationBarItem(icon: Icon(Icons.article), label: 'Artikel'), // Klik ini otomatis membuka ArticleScreen
        ],
      ),
    );
  }
}