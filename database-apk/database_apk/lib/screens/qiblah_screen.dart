// lib/screens/qiblah_screen.dart
import 'dart:math';
import 'package:flutter/material.dart';
import 'package:flutter_qiblah/flutter_qiblah.dart';
import 'package:geolocator/geolocator.dart';

class QiblahScreen extends StatefulWidget {
  const QiblahScreen({Key? key}) : super(key: key);

  @override
  State<QiblahScreen> createState() => _QiblahScreenState();
}

class _QiblahScreenState extends State<QiblahScreen> {
  bool _hasPermission = false;
  bool _isLoading = true;

  @override
  void initState() {
    super.initState();
    _checkLocationPermission();
  }

  Future<void> _checkLocationPermission() async {
    bool serviceEnabled;
    LocationPermission permission;

    serviceEnabled = await Geolocator.isLocationServiceEnabled();
    if (!serviceEnabled) {
      setState(() => _isLoading = false);
      return;
    }

    permission = await Geolocator.checkPermission();
    if (permission == LocationPermission.denied) {
      permission = await Geolocator.requestPermission();
      if (permission == LocationPermission.denied) {
        setState(() => _isLoading = false);
        return;
      }
    }

    if (permission == LocationPermission.deniedForever) {
      setState(() => _isLoading = false);
      return;
    }

    setState(() {
      _hasPermission = true;
      _isLoading = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF9F9F9),
      appBar: AppBar(
        title: const Text('Arah Kiblat', style: TextStyle(color: Colors.black87, fontWeight: FontWeight.bold)),
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Color(0xFF1B5E20)),
          onPressed: () => Navigator.pop(context),
        ),
      ),
      body: _isLoading
          ? const Center(child: CircularProgressIndicator(color: Color(0xFF2E7D32)))
          : !_hasPermission
              ? const Center(child: Text("Aplikasi membutuhkan izin lokasi untuk menghitung kiblat."))
              : StreamBuilder(
                  stream: FlutterQiblah.qiblahStream,
                  builder: (context, AsyncSnapshot<QiblahDirection> snapshot) {
                    if (snapshot.connectionState == ConnectionState.waiting) {
                      return const Center(child: CircularProgressIndicator(color: Color(0xFF2E7D32)));
                    }
                    
                    final qiblahDirection = snapshot.data!;
                    
                    return Center(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "${qiblahDirection.direction.toStringAsFixed(1)}°",
                            style: const TextStyle(fontSize: 32, fontWeight: FontWeight.bold, color: Color(0xFF1B5E20)),
                          ),
                          const SizedBox(height: 40),
                          // Visualisasi Rotasi Jarum Kompas
                          Transform.rotate(
                            angle: qiblahDirection.direction * (pi / 180) * -1,
                            child: Stack(
                              alignment: Alignment.center,
                              children: [
                                // Lingkaran Kompas Luar
                                Container(
                                  width: 260,
                                  height: 260,
                                  decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    border: Border.all(color: const Color(0xFF2E7D32), width: 4),
                                  ),
                                ),
                                // Jarum Penunjuk Ka'bah
                                const Icon(
                                  Icons.navigation,
                                  size: 140,
                                  color: Color(0xFF1B5E20),
                                ),
                              ],
                            ),
                          ),
                          const SizedBox(height: 40),
                          const Text(
                            "Putar perangkat Anda hingga jarum menghadap ke atas tegak",
                            style: TextStyle(color: Colors.grey),
                            textAlign: TextAlign.center,
                          ),
                        ],
                      ),
                    );
                  },
                ),
    );
  }
}