// lib/screens/dzikir_screen.dart
import 'package:flutter/material.dart';

class DzikirScreen extends StatelessWidget {
  final String jenisDzikir; // "Pagi" atau "Petang"

  const DzikirScreen({Key? key, required this.jenisDzikir}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF9F9F9),
      appBar: AppBar(
        title: Text(
          'Dzikir $jenisDzikir',
          style: const TextStyle(color: Colors.black87, fontWeight: FontWeight.bold),
        ),
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Color(0xFF1B5E20)),
          onPressed: () => Navigator.pop(context),
        ),
      ),
      body: Center(
        child: Text(
          'Konten Bacaan Dzikir $jenisDzikir\n(Dapat diisi dengan list doa dzikir)',
          textAlign: TextAlign.center,
          style: const TextStyle(fontSize: 16, color: Colors.grey),
        ),
      ),
    );
  }
}