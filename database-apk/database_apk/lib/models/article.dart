// lib/model/article.dart
class Article {
  final String title;
  final String ustadz;
  final String category;
  final String date;
  final String summary;

  Article({
    required this.title,
    required this.ustadz,
    required this.category,
    required this.date,
    required this.summary,
  });
}

class ArticleDatabase {
  static List<Article> allArticles = [
    Article(
      title: "Menjaga Istiqomah di Era Modern",
      ustadz: "Ust. Syafiq Riza Basalamah",
      category: "Tazkiyatun Nafs",
      date: "15 Mei 2026",
      summary: "Kiat-kiat praktis menjaga hati dan amalan agar tetap konsisten di tengah gempuran fitnah akhir zaman.",
    ),
    Article(
      title: "Membuka Pintu Rezeki dengan Istighfar",
      ustadz: "Ust. Khalid Basalamah",
      category: "Fiqih",
      date: "12 Mei 2026",
      summary: "Bagaimana amalan sederhana berupa istighfar dapat menjadi kunci pembuka jalan keluar dari segala kesempitan ekonomi.",
    ),
    Article(
      title: "Kunci Kebahagiaan Rumah Tangga",
      ustadz: "Ust. Firanda Andirja",
      category: "Muamalah",
      date: "10 Mei 2026",
      summary: "Saling memahami hak dan kewajiban suami istri berdasarkan petunjuk Al-Qur'an dan Sunnah Nabi.",
    ),
    Article(
      title: "Adab Berbicara Kepada Orang Tua",
      ustadz: "Ust. Syafiq Riza Basalamah",
      category: "Akhlak",
      date: "08 Mei 2026",
      summary: "Penjelasan mendalam mengenai batasan perkataan 'Ah' dan bagaimana memperlakukan orang tua yang sudah sepuh.",
    ),
    Article(
      title: "Dahsyatnya Doa Sepertiga Malam Terakhir",
      ustadz: "Ust. Khalid Basalamah",
      category: "Amalan",
      date: "05 Mei 2026",
      summary: "Mengapa waktu tahajud begitu istimewa dan bagaimana Allah membentangkan ampunan-Nya bagi yang meminta.",
    ),
    Article(
      title: "Ujian Hidup: Penghapus Dosa atau Azab?",
      ustadz: "Ust. Firanda Andirja",
      category: "Aqidah",
      date: "02 Mei 2026",
      summary: "Cara bijak seorang mukmin dalam menyikapi musibah agar bernilai pahala dan meninggikan derajat di sisi Allah.",
    ),
    Article(
      title: "Pentingnya Menuntut Ilmu Syar'i",
      ustadz: "Ust. Syafiq Riza Basalamah",
      category: "Pendidikan",
      date: "28 April 2026",
      summary: "Ilmu adalah penerang sebelum beramal. Kewajiban bagi setiap muslim untuk mempelajari dasar-dasar agamanya.",
    ),
    Article(
      title: "Amalan Penyelamat dari Siksa Kubur",
      ustadz: "Ust. Khalid Basalamah",
      category: "Aqidah",
      date: "25 April 2026",
      summary: "Membahas keutamaan membaca Surah Al-Mulk setiap malam dan amalan pelindung lainnya di alam barzakh.",
    ),
    Article(
      title: "Sifat-Sifat Orang yang Dirindukan Surga",
      ustadz: "Ust. Firanda Andirja",
      category: "Tazkiyatun Nafs",
      date: "20 April 2026",
      summary: "Kupas tuntas ciri-ciri hamba pilihan yang namanya telah harum di kalangan penduduk langit.",
    ),
    Article(
      title: "Indahnya Memaafkan Kesalahan Saudara",
      ustadz: "Ust. Syafiq Riza Basalamah",
      category: "Akhlak",
      date: "18 April 2026",
      summary: "Menghilangkan penyakit hati berupa dendam dan bagaimana kelapangan dada membawa ketenangan jiwa.",
    ),
  ];
}