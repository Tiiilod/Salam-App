<!-- <<<<<<< HEAD
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
=======
# <img width="40" height="40" alt="Screenshot 2026-05-25 101536" src="https://github.com/user-attachments/assets/a9306d66-8fc0-4c40-af8a-e2b602e461a7" /> Salam - Your Daily Spiritual Companion

[![Flutter](https://img.shields.io/badge/Framework-Flutter-02569B?logo=flutter&logoColor=white)](https://flutter.dev)
[![Dart](https://img.shields.io/badge/Language-Dart-0175C2?logo=dart&logoColor=white)](https://dart.dev)
[![Status](https://img.shields.io/badge/Status-Development-success)]()
[![License](https://img.shields.io/badge/License-MIT-green.svg)]()

**Salam** adalah aplikasi bimbingan ibadah modern yang dirancang untuk memadukan spiritualitas dengan kemudahan teknologi. Dibangun dengan presisi menggunakan **Flutter**, aplikasi ini menawarkan pengalaman pengguna yang tenang, tajam (berbasis vektor), dan responsif untuk membantu umat Muslim tetap terhubung dengan kewajibannya.

---

## 📱 Visual Showcase (Gallery)

Berikut adalah antarmuka utama aplikasi **Salam**. Setiap halaman dirancang dengan prinsip desain minimalis untuk mengurangi gangguan kognitif saat beribadah.

| **Splash Screen** | **Halaman Beranda** | **Jadwal Sholat** |
|:---:|:---:|:---:|
| <img width="480" height="1024" alt="Screenshot 2026-05-29 110531" src="https://github.com/user-attachments/assets/742b7ef6-79c6-41b7-b489-25fb52f07804" /> | <img width="475" height="1004" alt="Screenshot 2026-05-29 110649" src="https://github.com/user-attachments/assets/65f4ada6-f312-4da9-8997-4c8fba3d07c1" /> | <img width="483" height="1017" alt="Screenshot 2026-05-29 110705" src="https://github.com/user-attachments/assets/5f68ae51-4f94-4fcc-9c02-1c109ed0d7cd" />

| *Visual identity yang tajam & bersih* | *Navigasi cepat ke fitur utama* | *Data real-time presisi tinggi* |

| **Daftar Amalan** | **Artikel & Ilmu** | **Pengaturan** |
|:---:|:---:|:---:|
| <img width="484" height="1018" alt="Screenshot 2026-05-29 110715" src="https://github.com/user-attachments/assets/d0bc4b94-e392-4d54-bbcf-d947a90af320" /> | <img width="476" height="1010" alt="Screenshot 2026-05-29 110724" src="https://github.com/user-attachments/assets/2a7a034f-aef1-4537-863e-510644119c8d" /> | <img width="483" height="1021" alt="Screenshot 2026-05-29 110738" src="https://github.com/user-attachments/assets/2209e921-bd65-472e-bbff-fcf19904d1eb" />

| *Tracking ibadah harian* | *Konten edukasi Islami* | *Personalisasi pengalaman* |

---

## 💎 Fitur Unggulan

*   **Vektor-First Architecture:** Menggunakan SVG untuk semua elemen visual untuk menjamin ketajaman 4K di semua ukuran layar.
*   **Intelligent Prayer Times:** Algoritma jadwal sholat yang disesuaikan dengan koordinat geografis lokal secara otomatis.
*   **Adaptive Theme:** Skema warna "Islamic Deep Green" (#1B5E20) yang dirancang untuk kenyamanan visual jangka panjang.
*   **Seamless Navigation:** Struktur *state management* yang ringan untuk transisi antar halaman tanpa *lag*.

---

## 🛠️ Tech Stack & Standar Industri

Aplikasi ini mengimplementasikan standar pengembangan modern:

*   **UI/UX:** Material Design 3 dengan Custom SVG Rendering.
*   **Assets Management:** `flutter_svg` untuk efisiensi memori dan kualitas gambar.
*   **Branding:** `flutter_launcher_icons` untuk pembuatan *native launcher* yang konsisten.
*   **Performance:** Minimalisir *widget rebuild* untuk efisiensi baterai perangkat.

---

## 🚀 Instalasi & Pengembangan

Pastikan Anda telah menginstal **Flutter SDK** versi terbaru di perangkat Anda.

### 1. Kloning Repositori
```bash
git clone [https://github.com/Tiiilod/salam-app.git](https://github.com/Tiiilod/salam-app.git)
cd salam-app
>>>>>>> 83a7d257f97c9f019e40675543b6f1b49384eede -->
