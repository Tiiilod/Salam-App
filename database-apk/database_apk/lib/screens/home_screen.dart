// lib/screens/home_screen.dart
import 'dart:convert';
import 'package:database_apk/models/doa_model.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

import '../models/doa_model.dart';
import '../models/prayer_time.dart';
import '../widgets/prayer_tile.dart';
import '../widgets/prayer_countdown.dart';
import '../widgets/doa_button.dart';
import '../screens/doa_list_screen.dart'; 
import '../widgets/doa_dialog.dart';
import '../screens/qiblah_screen.dart'; 
import '../screens/dzikir_screen.dart'; // Import halaman dzikir baru

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<PrayerTime> _prayerList = [];
  String _hijriDate = 'Memuat...';
  String _gregorianDate = 'Memuat...';
  bool _isLoading = true;
  String _errorMessage = '';

  @override
  void initState() {
    super.initState();
    _fetchPrayerTimes();
  }

  // Fungsi mengambil data jadwal sholat hari ini dari API AlAdhan
  Future<void> _fetchPrayerTimes() async {
    const String city = 'Jakarta';
    const String country = 'Indonesia';
    const String url = 'https://api.aladhan.com/v1/timingsByCity?city=$city&country=$country&method=20';

    try {
      final response = await http.get(Uri.parse(url));

      if (response.statusCode == 200) {
        final Map<String, dynamic> jsonResponse = json.decode(response.body);
        final data = jsonResponse['data'];
        final timings = data['timings'];
        final dateInfo = data['date'];

        final hijri = dateInfo['hijri'];
        final gregorian = dateInfo['gregorian'];

        final List<PrayerTime> loadedPrayers = [
          PrayerTime(name: 'Fajr', time: timings['Fajr']),
          PrayerTime(name: 'Dhuhr', time: timings['Dhuhr']),
          PrayerTime(name: 'Asr', time: timings['Asr']),
          PrayerTime(name: 'Maghrib', time: timings['Maghrib']),
          PrayerTime(name: 'Isha', time: timings['Isha']),
        ];

        setState(() {
          _prayerList = loadedPrayers;
          _hijriDate = '${hijri['day']} ${hijri['month']['en']} ${hijri['year']}';
          _gregorianDate = '${gregorian['day']} ${gregorian['month']['en']} ${gregorian['year']}';
          _isLoading = false;
        });
      } else {
        setState(() {
          _errorMessage = 'Gagal memuat data (Status: ${response.statusCode})';
          _isLoading = false;
        });
      }
    } catch (error) {
      setState(() {
        _errorMessage = 'Koneksi bermasalah. Periksa internet Anda.';
        _isLoading = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF9F9F9),
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        // Menampilkan logo "Salam" di sisi kiri AppBar
        title: Image.asset(
          'assets/images/salam_logo.png', 
          height: 28,                     
          fit: BoxFit.contain,
          alignment: Alignment.centerLeft,
          errorBuilder: (context, error, stackTrace) {
            return const Text(
              'Salam',
              style: TextStyle(
                color: Color(0xFF1B5E20),
                fontWeight: FontWeight.bold,
                fontSize: 20,
              ),
            );
          },
        ),
        actions: [
          // Tombol Ikon Info Aplikasi (Lingkaran Kuning)
          IconButton(
            icon: const Icon(Icons.info_outline, color: Color(0xFF1B5E20)),
            onPressed: () {
              showDialog(
                context: context,
                builder: (BuildContext context) {
                  return AlertDialog(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                    backgroundColor: Colors.white,
                    content: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        const SizedBox(height: 10),
                        // Logo aplikasi di dalam dialog info
                        Image.asset(
                          'assets/images/salam_logo.png',
                          height: 40,
                          errorBuilder: (context, error, stackTrace) => const Text(
                            'Salam',
                            style: TextStyle(
                              color: Color(0xFF1B5E20),
                              fontWeight: FontWeight.bold,
                              fontSize: 28,
                            ),
                          ),
                        ),
                        const SizedBox(height: 8),
                        Text(
                          'Versi 1.0.0',
                          style: TextStyle(
                            color: Colors.grey.shade600,
                            fontSize: 13,
                          ),
                        ),
                        const SizedBox(height: 20),
                        const Text(
                          'Salam adalah aplikasi pemandu ibadah Muslim harian yang dilengkapi dengan jadwal sholat akurat berbasis API AlAdhan, penghitung waktu mundur otomatis, penunjuk arah kiblat presisi, serta kumpulan doa-doa harian.',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 14,
                            color: Colors.black87,
                            height: 1.5,
                          ),
                        ),
                        const SizedBox(height: 24),
                        const Divider(height: 1),
                        const SizedBox(height: 16),
                        Text(
                          '© ${DateTime.now().year} Salam App Team.\nAll Rights Reserved.',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 11,
                            color: Colors.grey.shade500,
                          ),
                        ),
                      ],
                    ),
                    actionsAlignment: MainAxisAlignment.center,
                    actions: [
                      TextButton(
                        onPressed: () => Navigator.pop(context),
                        style: TextButton.styleFrom(
                          foregroundColor: const Color(0xFF2E7D32),
                          padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
                        ),
                        child: const Text(
                          'Tutup',
                          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
                        ),
                      ),
                    ],
                  );
                },
              );
            },
          ),
        ],
      ),
      // Mematikan efek bounce/glow animasi ketika di-scroll
      body: NotificationListener<OverscrollIndicatorNotification>(
        onNotification: (OverscrollIndicatorNotification overscroll) {
          overscroll.disallowIndicator();
          return true;
        },
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Info Tanggal Hijriah & Masehi riil dari API
              Container(
                color: Colors.white,
                padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        const Icon(Icons.calendar_today, color: Color(0xFF2E7D32)),
                        const SizedBox(width: 8),
                        Text(
                          _hijriDate,
                          style: const TextStyle(fontWeight: FontWeight.w500),
                        ),
                      ],
                    ),
                    Text(
                      _gregorianDate,
                      style: const TextStyle(color: Colors.grey),
                    ),
                  ],
                ),
              ),
              const Divider(height: 1),

              // Penampil Status Waktu Sholat Terdekat & Countdown Bersih
              const PrayerCountdown(),

              // List Jadwal Waktu Sholat
              if (_isLoading)
                const Padding(
                  padding: EdgeInsets.symmetric(vertical: 40.0),
                  child: Center(child: CircularProgressIndicator(color: Color(0xFF2E7D32))),
                )
              else if (_errorMessage.isNotEmpty)
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 40.0),
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

              // Tombol Menu Arah Kiblat
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 12.0),
                child: InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const QiblahScreen()),
                    );
                  },
                  borderRadius: BorderRadius.circular(16),
                  child: Container(
                    padding: const EdgeInsets.all(16),
                    decoration: BoxDecoration(
                      gradient: const LinearGradient(
                        colors: [Color(0xFF1B5E20), Color(0xFF388E3C)],
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                      ),
                      borderRadius: BorderRadius.circular(16),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.green.withOpacity(0.2),
                          blurRadius: 8,
                          offset: const Offset(0, 4),
                        )
                      ],
                    ),
                    child: Row(
                      children: [
                        const Icon(
                          Icons.explore, 
                          color: Colors.white,
                          size: 30,
                        ),
                        const SizedBox(width: 16),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: const [
                            Text(
                              "Arah Kiblat",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(height: 2),
                            Text(
                              "Cek koordinat arah Ka'bah secara presisi",
                              style: TextStyle(
                                color: Colors.white70,
                                fontSize: 12,
                              ),
                            ),
                          ],
                        ),
                        const Spacer(),
                        const Icon(
                          Icons.arrow_forward_ios,
                          color: Colors.white70,
                          size: 16,
                        ),
                      ],
                    ),
                  ),
                ),
              ),

              // ==========================================
              // MENU DZIKIR PAGI & PETANG (AREA KUNING)
              // ==========================================
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 4.0),
                child: Row(
                  children: [
                    // Tombol Dzikir Pagi
                    Expanded(
                      child: InkWell(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => const DzikirScreen(jenisDzikir: 'Pagi')),
                          );
                        },
                        borderRadius: BorderRadius.circular(12),
                        child: Container(
                          padding: const EdgeInsets.symmetric(vertical: 14, horizontal: 12),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(12),
                            border: Border.all(color: Colors.grey.shade200),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black.withOpacity(0.02),
                                blurRadius: 4,
                                offset: const Offset(0, 2),
                              )
                            ],
                          ),
                          child: Row(
                            children: const [
                              Icon(Icons.wb_sunny_outlined, color: Colors.amber, size: 22),
                              SizedBox(width: 10),
                              Text(
                                "Dzikir Pagi",
                                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14, color: Colors.black87),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(width: 12),
                    // Tombol Dzikir Petang
                    Expanded(
                      child: InkWell(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => const DzikirScreen(jenisDzikir: 'Petang')),
                          );
                        },
                        borderRadius: BorderRadius.circular(12),
                        child: Container(
                          padding: const EdgeInsets.symmetric(vertical: 14, horizontal: 12),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(12),
                            border: Border.all(color: Colors.grey.shade200),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black.withOpacity(0.02),
                                blurRadius: 4,
                                offset: const Offset(0, 2),
                              )
                            ],
                          ),
                          child: Row(
                            children: const [
                              Icon(Icons.dark_mode_outlined, color: Colors.indigo, size: 22),
                              SizedBox(width: 10),
                              Text(
                                "Dzikir Petang",
                                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14, color: Colors.black87),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              // ==========================================

              const SizedBox(height: 12),

              // Section Doa Harian
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      'Doa Harian',
                      style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                    ),
                    TextButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const DoaListScreen(),
                          ),
                        );
                      },
                      child: const Text(
                        'Lihat Semua',
                        style: TextStyle(color: Color(0xFF2E7D32)),
                      ),
                    ),
                  ],
                ),
              ),

              // Tombol-Tombol Shortcut Doa Populer
              DoaButton(
                title: 'Doa Sebelum Tidur',
                icon: Icons.menu_book,
                onTap: () {
                  showDoaDialog(context, DoaDatabase.allDoa[0]);
                },
              ),
              DoaButton(
                title: 'Doa Bangun Tidur',
                icon: Icons.front_hand,
                onTap: () {
                  showDoaDialog(context, DoaDatabase.allDoa[1]);
                },
              ),

              const SizedBox(height: 24),

              // Card Kotak Nasihat Hari Ini
              Container(
                margin: const EdgeInsets.all(16),
                padding: const EdgeInsets.all(20),
                width: double.infinity,
                decoration: BoxDecoration(
                  color: const Color(0xFFE8F5E9),
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Text(
                      'Nasihat Hari Ini :',
                      style: TextStyle(color: Colors.grey, fontSize: 14),
                    ),
                    SizedBox(height: 12),
                    Center(
                      child: Text(
                        '“Awali Hari Dengan Basmallah”',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: Color(0xFF1B5E20),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 80), // Jarak aman dasar dari Bottom Navigation Bar
            ],
          ),
        ),
      ),
    );
  }
}