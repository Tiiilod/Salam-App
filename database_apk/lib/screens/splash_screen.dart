import 'package:flutter/material.dart';
import 'main_navigation.dart'; // Pastikan file ini ada

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    _navigateToMain();
  }

  void _navigateToMain() async {
    // Menunggu 3 detik
    await Future.delayed(const Duration(seconds: 3));
    if (!mounted) return;

    // Berpindah ke halaman utama
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(builder: (context) => const MainNavigation()),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // Latar belakang putih bersih agar tulisan hijau terlihat menonjol
      backgroundColor: Colors.white, 
      body: Stack(
        children: [
          // Bagian Tengah: Logo Salam
          Center(
            child: Image.asset(
              'assets/images/salam_logo.png',
              width: 250, // Sesuaikan ukuran logo
              fit: BoxFit.contain,
            ),
          ),
          
          // Bagian Bawah: Indikator Loading atau Tagline (Opsional)
          Align(
            alignment: Alignment.bottomCenter,
            child: Padding(
              padding: const EdgeInsets.only(bottom: 50.0),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  const SizedBox(
                    width: 30,
                    height: 30,
                    child: CircularProgressIndicator(
                      color: Color(0xFF1B5E20), // Hijau yang senada dengan tulisan
                      strokeWidth: 2,
                    ),
                  ),
                  const SizedBox(height: 15),
                  Text(
                    "Aplikasi Panduan Muslim",
                    style: TextStyle(
                      color: Colors.grey.withOpacity(0.8),
                      fontSize: 14,
                      letterSpacing: 1.2,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}