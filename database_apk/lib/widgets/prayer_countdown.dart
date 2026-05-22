// widgets/prayer_countdown.dart
import 'dart:async';
import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:intl/intl.dart';

class PrayerCountdown extends StatefulWidget {
  const PrayerCountdown({Key? key}) : super(key: key);

  @override
  State<PrayerCountdown> createState() => _PrayerCountdownState();
}

class _PrayerCountdownState extends State<PrayerCountdown> {
  Timer? _timer;
  String _statusText = "Memuat waktu...";
  String _countdownText = "-- Menit Lagi";
  String _targetTimeText = "[--:--]";

  @override
  void initState() {
    super.initState();
    _startCountdownTimer();
  }

  @override
  void dispose() {
    _timer?.cancel();
    super.dispose();
  }

  void _startCountdownTimer() {
    _updateCountdown();
    _timer = Timer.periodic(const Duration(seconds: 30), (timer) {
      _updateCountdown();
    });
  }

  Future<void> _updateCountdown() async {
    const String city = 'Jakarta';
    const String country = 'Indonesia';
    const String url = 'https://api.aladhan.com/v1/timingsByCity?city=$city&country=$country&method=20';

    try {
      final response = await http.get(Uri.parse(url));
      if (response.statusCode != 200) return;

      final Map<String, dynamic> jsonResponse = json.decode(response.body);
      final timings = jsonResponse['data']['timings'];

      final Map<String, String> prayerTimes = {
        'Fajr': timings['Fajr'],
        'Dhuhr': timings['Dhuhr'],
        'Asr': timings['Asr'],
        'Maghrib': timings['Maghrib'],
        'Isha': timings['Isha'],
      };

      final DateTime now = DateTime.now();
      final DateFormat timeFormat = DateFormat("HH:mm");

      String nextPrayerName = "";
      DateTime? nextPrayerDateTime;

      for (var entry in prayerTimes.entries) {
        final String name = entry.key;
        final String timeStr = entry.value.split(' ')[0];

        final List<String> parts = timeStr.split(':');
        final int hour = int.parse(parts[0]);
        final int minute = int.parse(parts[1]);

        DateTime prayerDateTime = DateTime(now.year, now.month, now.day, hour, minute);

        if (prayerDateTime.isBefore(now)) {
          prayerDateTime = prayerDateTime.add(const Duration(days: 1));
        }

        if (nextPrayerDateTime == null || prayerDateTime.isBefore(nextPrayerDateTime)) {
          nextPrayerDateTime = prayerDateTime;
          nextPrayerName = name;
        }
      }

      if (nextPrayerDateTime != null) {
        final Duration difference = nextPrayerDateTime.difference(now);
        final int totalMinutes = difference.inMinutes;
        final int hours = totalMinutes ~/ 60;
        final int minutes = totalMinutes % 60;

        String localPrayerName = nextPrayerName;
        if (nextPrayerName == 'Fajr') localPrayerName = 'Subuh';
        if (nextPrayerName == 'Dhuhr') localPrayerName = 'Dzuhur';
        if (nextPrayerName == 'Asr') localPrayerName = 'Ashar';
        if (nextPrayerName == 'Maghrib') localPrayerName = 'Maghrib';
        if (nextPrayerName == 'Isha') localPrayerName = 'Isya';

        setState(() {
          _statusText = "Sebentar Lagi Waktu $localPrayerName";
          _targetTimeText = "[${timeFormat.format(nextPrayerDateTime!)}]";

          if (hours > 0) {
            _countdownText = "$hours Jam $minutes Menit Lagi";
          } else {
            _countdownText = "$minutes Menit Lagi";
          }
        });
      }
    } catch (_) {}
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 14.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          // Bagian Kiri: Status Sholat & Hanya Jam Target
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                _statusText,
                style: const TextStyle(
                  color: Colors.black54,
                  fontSize: 13,
                ),
              ),
              const SizedBox(height: 4),
              // Bagian teks durasi di kiri dihapus, menyisakan jam target saja
              Text(
                _targetTimeText,
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                  color: Colors.black,
                ),
              ),
            ],
          ),
          // Bagian Kanan: Tetap menampilkan durasi waktu mundur
          Text(
            _countdownText,
            style: const TextStyle(
              color: Colors.black54,
              fontSize: 13,
            ),
          ),
        ],
      ),
    );
  }
}