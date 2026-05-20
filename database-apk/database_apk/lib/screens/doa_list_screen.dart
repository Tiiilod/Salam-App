// lib/screens/doa_list_screen.dart
import 'package:database_apk/models/doa_model.dart';
import 'package:flutter/material.dart';
import 'package:database_apk/widgets/doa_dialog.dart';

class DoaListScreen extends StatelessWidget {
  const DoaListScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final listDoa = DoaDatabase.allDoa;

    return Scaffold(
      appBar: AppBar(
        title: const Text("Kumpulan Doa Harian", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold)),
        backgroundColor: const Color(0xFF1B5E20),
      ),
      body: ListView.separated(
        padding: const EdgeInsets.all(16),
        itemCount: listDoa.length,
        separatorBuilder: (context, index) => const SizedBox(height: 10),
        itemBuilder: (context, index) {
          return Card(
            elevation: 0,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12),
              side: BorderSide(color: Colors.grey.shade200),
            ),
            child: ListTile(
              leading: const Icon(Icons.menu_book, color: Color(0xFF2E7D32)),
              title: Text(listDoa[index].title),
              trailing: const Icon(Icons.arrow_forward_ios, size: 16, color: Colors.white,),
              onTap: () => showDoaDialog(context, listDoa[index]),
            ),
          );
        },
      ),
    );
  }
}