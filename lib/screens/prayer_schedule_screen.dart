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
  String _selectedRegion = 'Jakarta';
  List<PrayerTime> _prayerList = [];
  bool _isLoading = true;
  String _errorMessage = '';

  @override
  void initState() {
    super.initState();
    _fetchPrayerTimes(_selectedRegion);
  }

  // Fungsi mengambil data API berdasarkan kota yang diinput pengguna
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
          _errorMessage = 'Kota tidak ditemukan atau gagal memuat data';
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

  // MENAMPILKAN INPUT PENCARIAN UNTUK SELURUH KOTA
  void _showCitySearchDialog() {
    final TextEditingController _searchController = TextEditingController(text: _selectedRegion);

    showModalBottomSheet(
      context: context,
      isScrollControlled: true, // Membuat bottom sheet bisa naik saat keyboard muncul
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(24)),
      ),
      builder: (context) {
        return Padding(
          padding: EdgeInsets.only(
            bottom: MediaQuery.of(context).viewInsets.bottom, // Menyesuaikan tinggi keyboard
            top: 24,
            left: 24,
            right: 24,
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                "Cari Kota di Indonesia",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 8),
              const Text(
                "Ketikkan nama kota atau kabupaten (Contoh: Bandung, Medan, Malang, dll.)",
                style: TextStyle(fontSize: 13, color: Colors.black54),
              ),
              const SizedBox(height: 16),
              
              // Kolom Input Teks Pencarian
              TextField(
                controller: _searchController,
                autofocus: true,
                textCapitalization: TextCapitalization.words,
                decoration: InputDecoration(
                  hintText: "Masukkan nama kota...",
                  prefixIcon: const Icon(Icons.search, color: Color(0xFF2E7D32)),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                    borderSide: const BorderSide(color: Color(0xFF2E7D32), width: 2),
                  ),
                ),
                onSubmitted: (value) {
                  if (value.trim().isNotEmpty) {
                    Navigator.pop(context, value.trim());
                  }
                },
              ),
              const SizedBox(height: 20),
              
              // Tombol Konfirmasi
              SizedBox(
                width: double.infinity,
                height: 48,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xFF2E7D32),
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
                  ),
                  onPressed: () {
                    if (_searchController.text.trim().isNotEmpty) {
                      Navigator.pop(context, _searchController.text.trim());
                    }
                  },
                  child: const Text("Cari Jadwal", style: TextStyle(color: Colors.white, fontSize: 16)),
                ),
              ),
              const SizedBox(height: 24),
            ],
          ),
        );
      },
    ).then((newValue) {
      if (newValue != null && newValue is String) {
        setState(() {
          _selectedRegion = newValue;
        });
        _fetchPrayerTimes(newValue); // Ambil data jadwal sholat berdasarkan input kota baru
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF9F9F9),
      body: NotificationListener<OverscrollIndicatorNotification>(
        onNotification: (OverscrollIndicatorNotification overscroll) {
          overscroll.disallowIndicator();
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
                    
                    // --- BAGIAN YANG DIUBAH (INPUT BAGIAN WARNA PINK) ---
                    // Mengubah dropdown menjadi tombol pencarian input teks
                    InkWell(
                      onTap: _showCitySearchDialog,
                      borderRadius: BorderRadius.circular(16),
                      child: Ink(
                        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
                        decoration: BoxDecoration(
                          color: Colors.white.withOpacity(0.2),
                          borderRadius: BorderRadius.circular(16),
                          border: Border.all(color: Colors.white30),
                        ),
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            const Icon(Icons.search, color: Colors.white, size: 18),
                            const SizedBox(width: 8),
                            Text(
                              _selectedRegion,
                              style: const TextStyle(color: Colors.white, fontSize: 16, fontWeight: FontWeight.bold),
                            ),
                            const SizedBox(width: 8),
                            const Icon(Icons.keyboard_arrow_down, color: Colors.white, size: 20),
                          ],
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