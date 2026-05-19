// lib/widgets/doa_dialog.dart
import 'package:flutter/material.dart';
import '../models/doa_model.dart';

void showDoaDialog(BuildContext context, Doa doa) {
  showDialog(
    context: context,
    builder: (context) => AlertDialog(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      title: Text(doa.title, style: const TextStyle(color: Color(0xFF1B5E20))),
      content: SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(doa.arabic, 
              textAlign: TextAlign.right,
              style: const TextStyle(fontSize: 22, fontWeight: FontWeight.bold, fontFamily: 'Arabic'),
            ),
            const SizedBox(height: 15),
            Text(doa.latin, style: const TextStyle(fontStyle: FontStyle.italic, color: Colors.blueGrey)),
            const SizedBox(height: 10),
            Text(doa.translation, textAlign: TextAlign.center),
          ],
        ),
      ),
      actions: [
        TextButton(
          onPressed: () => Navigator.pop(context),
          child: const Text("Tutup", style: TextStyle(color: Color(0xFF2E7D32))),
        )
      ],
    ),
  );
}