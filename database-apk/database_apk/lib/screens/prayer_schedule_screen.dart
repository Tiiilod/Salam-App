// lib/screens/prayer_schedule_screen.dart
import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import '../models/prayer_time.dart';
import '../widgets/prayer_tile.dart';

class PrayerScheduleScreen extends StatefulWidget {
  const PrayerScheduleScreen({Key? key}) : super(key: key);

  @override
  State<PrayerScheduleScreen> createState() => _PrayerScheduleScreenState();
}

class _PrayerScheduleScreenState extends State<PrayerScheduleScreen> {
  // Daftar wilayah di Indonesia untuk Dropdown
  final List<String> _regions = [
    'Jakarta',
    'Surabaya',
    'Medan',
    'Makassar',
    'Bandung'
  ];

  String _selectedRegion = 'Jakarta';
  List<PrayerTime> _prayerList = [];
  bool _isLoading = true;
  String _errorMessage = '';

  @override
  void initState() {
    super.initState();
    _fetchPrayerTimes(_selectedRegion);
  }

  // Fungsi mengambil data API berdasarkan kota yang dipilih
  Future<void> _fetchPrayerTimes(String city) async {
    setState(() {
      _isLoading = true;
      _errorMessage = '';
    });

    final String url = 'https://api.aladhan.com/v1/timingsByCity?city=$city&country=Indonesia&method=20';

    try {
      final response = await http.get(Uri.parse(url));

      if (response.statusCode == 200) {
        final Map<String, dynamic> jsonResponse = json.decode(response.body);
        final timings = jsonResponse['data']['timings'];

        final List<PrayerTime> loadedPrayers = [
          PrayerTime(name: 'Fajr', time: timings['Fajr']),
          PrayerTime(name: 'Dhuhr', time: timings['Dhuhr']),
          PrayerTime(name: 'Asr', time: timings['Asr']),
          PrayerTime(name: 'Maghrib', time: timings['Maghrib']),
          PrayerTime(name: 'Isha', time: timings['Isha']),
        ];

        setState(() {
          _prayerList = loadedPrayers;
          _isLoading = false;
        });
      } else {
        setState(() {
          _errorMessage = 'Gagal memuat data dari server';
          _isLoading = false;
        });
      }
    } catch (e) {
      setState(() {
        _errorMessage = 'Koneksi internet bermasalah';
        _isLoading = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF9F9F9),
      body: NotificationListener<OverscrollIndicatorNotification>(
        onNotification: (OverscrollIndicatorNotification overscroll) {
          overscroll.disallowIndicator(); // Menghilangkan animasi scroll membal
          return true;
        },
        child: SingleChildScrollView(
          child: Column(
            children: [
              // --- HIASAN HEADER GRADASI ---
              Container(
                width: double.infinity,
                padding: const EdgeInsets.only(top: 60, bottom: 30, left: 20, right: 20),
                decoration: const BoxDecoration(
                  gradient: LinearGradient(
                    colors: [Color(0xFF1B5E20), Color(0xFF2E7D32)],
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                  ),
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(32),
                    bottomRight: Radius.circular(32),
                  ),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      "Jadwal Sholat Wilayah",
                      style: TextStyle(color: Colors.white70, fontSize: 16),
                    ),
                    const SizedBox(height: 8),
                    const Text(
                      "Nusantara Indonesia",
                      style: TextStyle(color: Colors.white, fontSize: 26, fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(height: 20),
                    
                    // --- DROPDOWN PILIHAN WILAYAH ---
                    Container(
                      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 4),
                      decoration: BoxDecoration(
                        color: Colors.white.withOpacity(0.2),
                        borderRadius: BorderRadius.circular(16),
                        border: Border.all(color: Colors.white30),
                      ),
                      child: DropdownButtonHideUnderline(
                        child: DropdownButton<String>(
                          value: _selectedRegion,
                          dropdownColor: const Color(0xFF2E7D32),
                          icon: const Icon(Icons.keyboard_arrow_down, color: Colors.white),
                          style: const TextStyle(color: Colors.white, fontSize: 16, fontWeight: FontWeight.bold),
                          items: _regions.map((String region) {
                            return DropdownMenuItem<String>(
                              value: region,
                              child: Text(region),
                            );
                          }).toList(),
                          onChanged: (String? newValue) {
                            if (newValue != null) {
                              setState(() {
                                _selectedRegion = newValue;
                              });
                              _fetchPrayerTimes(newValue); // Ambil data baru dari API saat dropdown berubah
                            }
                          },
                        ),
                      ),
                    )
                  ],
                ),
              ),
              
              const SizedBox(height: 20),

              // Indikator wilayah aktif
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8),
                child: Row(
                  children: [
                    const Icon(Icons.location_on, color: Color(0xFF2E7D32)),
                    const SizedBox(width: 8),
                    Text(
                      "Menampilkan Waktu untuk: $_selectedRegion",
                      style: const TextStyle(fontWeight: FontWeight.w500, color: Colors.black54),
                    ),
                  ],
                ),
              ),

              // --- KONDISI LOADING / ERROR / DATA LIST ---
              if (_isLoading)
                const Padding(
                  padding: EdgeInsets.symmetric(vertical: 60.0),
                  child: Center(child: CircularProgressIndicator(color: Color(0xFF2E7D32))),
                )
              else if (_errorMessage.isNotEmpty)
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 60.0),
                  child: Center(
                    child: Text(
                      _errorMessage,
                      style: const TextStyle(color: Colors.red, fontWeight: FontWeight.w500),
                    ),
                  ),
                )
              else
                ListView.builder(
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  itemCount: _prayerList.length,
                  itemBuilder: (context, index) {
                    return PrayerTile(prayer: _prayerList[index]);
                  },
                ),
              
              const SizedBox(height: 40),
            ],
          ),
        ),
      ),
    );
  }
}