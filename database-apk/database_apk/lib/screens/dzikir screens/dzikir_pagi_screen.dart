// lib/screens/dzikir_pagi_screen.dart
import 'package:flutter/material.dart';
import '../../models/dzikir_data.dart';

class DzikirPagiScreen extends StatefulWidget {
  const DzikirPagiScreen({Key? key}) : super(key: key);

  @override
  State<DzikirPagiScreen> createState() => _DzikirPagiScreenState();
}

class _DzikirPagiScreenState extends State<DzikirPagiScreen> {
  final List<DzikirItem> _data = DzikirData.pagiFull;
  late List<int> _counters;

  @override
  void initState() {
    super.initState();
    _counters = List<int>.filled(_data.length, 0);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF9F9F9),
      appBar: AppBar(
        title: const Text('Dzikir Pagi', style: TextStyle(color: Colors.black87, fontWeight: FontWeight.bold, fontSize: 18)),
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Color(0xFF1B5E20)),
          onPressed: () => Navigator.pop(context),
        ),
      ),
      body: ListView.builder(
        padding: const EdgeInsets.all(16),
        itemCount: _data.length,
        itemBuilder: (context, index) {
          final item = _data[index];
          final currentCount = _counters[index];
          final isDone = currentCount >= item.targetSajak;

          return Card(
            elevation: 0,
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16), side: BorderSide(color: Colors.grey.shade200)),
            margin: const EdgeInsets.only(bottom: 16),
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 4),
                        decoration: BoxDecoration(color: const Color(0xFFFFF9C4), borderRadius: BorderRadius.circular(20)),
                        child: Text('Ulangi: ${item.targetSajak}x', style: const TextStyle(color: ColorsamberEdge.amberDark, fontSize: 12, fontWeight: FontWeight.bold)),
                      ),
                      if (isDone) const Icon(Icons.check_circle, color: Colors.green, size: 22),
                    ],
                  ),
                  const SizedBox(height: 16),
                  Text(item.arab, textAlign: TextAlign.right, style: const TextStyle(fontSize: 21, fontWeight: FontWeight.w500, height: 1.6, color: Colors.black87)),
                  const SizedBox(height: 14),
                  Text(item.latin, style: TextStyle(fontSize: 14, fontStyle: FontStyle.italic, color: Colors.grey.shade700)),
                  const SizedBox(height: 8),
                  Text(item.arti, style: TextStyle(fontSize: 13, color: Colors.grey.shade600, height: 1.4)),
                  const SizedBox(height: 16),
                  ElevatedButton(
                    onPressed: isDone ? null : () => setState(() => _counters[index]++),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: isDone ? Colors.grey.shade300 : const Color(0xFF1B5E20),
                      foregroundColor: Colors.white,
                      padding: const EdgeInsets.symmetric(vertical: 12),
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
                    ),
                    child: Text(isDone ? 'Selesai' : '$currentCount / ${item.targetSajak} Klik'),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}

class ColorsamberEdge {
  static const Color amberDark = Color(0xFFF57F17);
}
extension TextStyleColor on TextStyle {
  static const TextStyle labelStyle = TextStyle(color: Color(0xFFF57F17));
}