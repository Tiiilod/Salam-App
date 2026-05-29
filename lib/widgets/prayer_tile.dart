// widgets/prayer_tile.dart
import 'package:flutter/material.dart';
import '../models/prayer_time.dart';

class PrayerTile extends StatelessWidget {
  final PrayerTime prayer;

  const PrayerTile({Key? key, required this.prayer}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // Kita buat tampilan default yang bersih dan rapi tanpa status active dahulu
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 6),
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
        border: Border.all(
          color: Colors.grey.shade200,
        ),
      ),
      child: Row(
        children: [
          const Icon(
            Icons.access_time,
            color: Color(0xFF2E7D32),
          ),
          const SizedBox(width: 16),
          Text(
            prayer.name,
            style: const TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w500,
              color: Colors.black87,
            ),
          ),
          const Spacer(),
          Text(
            prayer.time,
            style: const TextStyle(
              fontSize: 16,
              color: Colors.black87,
            ),
          ),
        ],
      ),
    );
  }
}