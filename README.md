# 🌙 Salam - Aplikasi Panduan Muslim

[![Flutter Version](https://img.shields.io/badge/Flutter-v3.x-blue.svg)](https://flutter.dev)
[![Platform](https://img.shields.io/badge/Platform-Android%20%7C%20iOS-green.svg)]()
[![License](https://img.shields.io/badge/License-MIT-yellow.svg)]()

**Salam** adalah aplikasi mobile berbasis Flutter yang dirancang khusus untuk membantu umat Muslim dalam menjalankan ibadah sehari-hari secara lebih konsisten dan teratur. Dengan antarmuka yang bersih, modern, dan minimalis, aplikasi ini berfokus pada kemudahan akses informasi spiritual yang akurat.

---

## ✨ Fitur Utama

* **Jadwal Sholat Akurat:** Menampilkan waktu sholat 5 waktu (Fajr, Dhuhr, Asr, Maghrib, Isha) secara real-time berdasarkan wilayah pengguna (Nusantara Indonesia).
* **Splash Screen & Animasi Elegan:** Pengalaman memuat aplikasi yang mulus dengan transisi bersih dan tampilan logo berbasis vektor (SVG) yang tajam.
* **Navigasi Intuitif:** Dilengkapi dengan struktur navigasi bawah (*Bottom Navigation Bar*) yang memudahkan perpindahan antar halaman utama seperti Sholat, Amalan, dan Artikel.
* **Desain Minimalis Modern:** Menggunakan tema warna hijau Islami yang teduh (`#1B5E20`) dipadukan dengan latar belakang putih bersih untuk kenyamanan mata pengguna.

---

## 📸 Tampilan Aplikasi

| Splash Screen & Tema Utama | Fitur Jadwal Sholat |
|---|---|
| <img src="assets/images/logoApp.svg" width="250" alt="Salam Logo"/> | <img src="https://via.placeholder.com/250x500.png?text=Preview+Jadwal+Sholat" width="250" alt="Jadwal Sholat"/> |

> *Catatan: Ganti link gambar di atas dengan screenshot asli aplikasi Anda setelah di-upload ke GitHub.*

---

## 🛠️ Teknologi & Packages yang Digunakan

Aplikasi ini dibangun menggunakan modul-modul andalan berikut:

* **[Flutter SDK](https://flutter.dev):** Framework utama pembuatan aplikasi.
* **[flutter_svg](https://pub.dev/packages/flutter_svg):** Untuk merender logo "Salam" berbasis vektor (SVG) agar tetap tajam di semua resolusi layar tanpa pecah.
* **[flutter_launcher_icons](https://pub.dev/packages/flutter_launcher_icons):** Digunakan untuk manajemen otomatis pembuatan *icon native* APK (Android & iOS).

---

## 🚀 Cara Menjalankan Proyek Secara Lokal

Ikuti langkah-langkah berikut untuk menjalankan proyek ini di komputer Anda:

### 1. Mainkan Clone Repositori
```bash
git clone [https://github.com/username_anda/salam-app.git](https://github.com/username_anda/salam-app.git)
cd salam-app
2. Install Dependencies
Unduh semua paket atau library Flutter yang dibutuhkan:

Bash
flutter pub get
3. Generate Launcher Icons (Opsional)
Jika Anda ingin memperbarui ikon aplikasi bawaan menggunakan konfigurasi asset:

Bash
flutter pub run flutter_launcher_icons
4. Jalankan Aplikasi
Pastikan emulator Anda sudah aktif atau perangkat fisik sudah terhubung:

Bash
flutter run
📁 Struktur Folder Proyek (Singkat)
Plaintext
salam-app/
  ├── assets/
  │    └── images/
  │         └── logoApp.svg       # File Logo Vektor Utama
  ├── lib/
  │    ├── main.dart              # Titik masuk utama aplikasi
  │    ├── main_navigation.dart   # Manajemen navigasi bawah
  │    └── splash_screen.dart     # Halaman loading (Splash)
  └── pubspec.yaml                # Konfigurasi dependensi proyek
📝 Lisensi
Proyek ini dilisensikan di bawah MIT License - Lihat file LICENSE untuk informasi lebih lanjut.

📬 Kontak & Kontribusi
Jika Anda ingin berkontribusi, mendiskusikan fitur baru, atau melaporkan kendala (bugs), silakan buka bagian Issues atau kirimkan Pull Request.

Dibuat dengan 💚 untuk Umat Muslim di Indonesia.