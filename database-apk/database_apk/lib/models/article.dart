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
    // --- TAMBAHAN 20 ARTIKEL KAJIAN BARU ---
    Article(
      title: "Hakikat Syukur dalam Kelapangan dan Sempit",
      ustadz: "Ust. Syafiq Riza Basalamah",
      category: "Tazkiyatun Nafs",
      date: "16 Mei 2026",
      summary: "Memahami arti bersyukur yang sesungguhnya, bukan hanya saat menerima nikmat tetapi juga saat menghadapi ketetapan yang berat.",
    ),
    Article(
      title: "Adab Menggunakan Media Sosial Bagi Muslim",
      ustadz: "Ust. Khalid Basalamah",
      category: "Akhlak",
      date: "14 Mei 2026",
      summary: "Panduan syariat dalam menyebarkan informasi, menjaga lisan digital, dan menghindari bahaya laten dari penyakit 'Ain di dunia maya.",
    ),
    Article(
      title: "Menatap Masa Depan Anak Berdasarkan Sunnah",
      ustadz: "Ust. Firanda Andirja",
      category: "Pendidikan",
      date: "11 Mei 2026",
      summary: "Langkah-langkah mendidik generasi rabbani sejak dini dengan menanamkan tauhid dan kecintaan kepada Rasulullah.",
    ),
    Article(
      title: "Fiqih Jual Beli Online yang Berkah",
      ustadz: "Ust. Khalid Basalamah",
      category: "Muamalah",
      date: "09 Mei 2026",
      summary: "Mengenal batasan gharar (ketidakjelasan) dan riba dalam transaksi digital modern agar harta yang didapat tetap halal.",
    ),
    Article(
      title: "Mengobati Hati yang Keras dan Gampang Gelisah",
      ustadz: "Ust. Syafiq Riza Basalamah",
      category: "Tazkiyatun Nafs",
      date: "07 Mei 2026",
      summary: "Menelusuri penyebab gundah gulana yang berlebihan dan bagaimana Al-Qur'an serta zikir menjadi obat penenang terbaik.",
    ),
    Article(
      title: "Mengenal Pembatal-Pembatal Keislaman",
      ustadz: "Ust. Firanda Andirja",
      category: "Aqidah",
      date: "04 Mei 2026",
      summary: "Penjelasan ilmiah mengenai perkara dasar yang tanpa disadari dapat merusak tauhid dan menggugurkan seluruh amal saleh seseorang.",
    ),
    Article(
      title: "Keutamaan Menyambung Tali Silaturahmi",
      ustadz: "Ust. Syafiq Riza Basalamah",
      category: "Akhlak",
      date: "01 Mei 2026",
      summary: "Mengapa mengunjungi sanak saudara dapat memanjangkan umur dan melapangkan jalan rezeki secara nyata.",
    ),
    Article(
      title: "Fiqih Shalat Sunnah Rawatib",
      ustadz: "Ust. Khalid Basalamah",
      category: "Fiqih",
      date: "29 April 2026",
      summary: "Panduan lengkap mengenai shalat sunnah yang mengiringi shalat fardhu dan keutamaan dibangunkan rumah di surga.",
    ),
    Article(
      title: "Bahaya Sifat Sombong dan Hasad",
      ustadz: "Ust. Firanda Andirja",
      category: "Tazkiyatun Nafs",
      date: "26 April 2026",
      summary: "Menguliti penyakit batin yang pertama kali mendurhakai Allah dan bagaimana cara mengikisnya dari dalam dada.",
    ),
    Article(
      title: "Kiat Khusyuk dalam Shalat",
      ustadz: "Ust. Khalid Basalamah",
      category: "Amalan",
      date: "23 April 2026",
      summary: "Langkah praktis mulai dari penyempurnaan wudu hingga pemahaman bacaan shalat demi meraih kekhusyukan yang hakiki.",
    ),
    Article(
      title: "Mempersiapkan Bekal Sebelum Ajal Menjemput",
      ustadz: "Ust. Syafiq Riza Basalamah",
      category: "Tazkiyatun Nafs",
      date: "21 April 2026",
      summary: "Renungan mendalam tentang kepastian mati dan bagaimana menginvestasikan waktu yang tersisa untuk hal yang kekal.",
    ),
    Article(
      title: "Adab dan Fiqih Berdoa Agar Cepat Dikabulkan",
      ustadz: "Ust. Firanda Andirja",
      category: "Amalan",
      date: "19 April 2026",
      summary: "Kumpulan waktu-waktu mustajab dan syarat batin yang harus dipenuhi agar doa seorang hamba menembus langit.",
    ),
    Article(
      title: "Kewajiban Menjaga Pandangan di Zaman Fitnah",
      ustadz: "Ust. Syafiq Riza Basalamah",
      category: "Akhlak",
      date: "17 April 2026",
      summary: "Bagaimana menjaga pandangan mata (ghadhul bashar) menjadi benteng utama dalam menyelamatkan kesucian hati.",
    ),
    Article(
      title: "Mengenal Hak-Hak Tetangga dalam Islam",
      ustadz: "Ust. Khalid Basalamah",
      category: "Muamalah",
      date: "15 April 2026",
      summary: "Penekanan syariat tentang pentingnya berbuat baik kepada tetangga terdekat, bahkan menjadi tolok ukur kesempurnaan iman.",
    ),
    Article(
      title: "Tanda-Tanda Cinta Allah Kepada Hamba-Nya",
      ustadz: "Ust. Firanda Andirja",
      category: "Aqidah",
      date: "12 April 2026",
      summary: "Ketika Allah mencintai seorang hamba, Dia akan mengujinya dan menuntunnya pada amalan-amalan penghuni surga.",
    ),
    Article(
      title: "Pentingnya Mengikhlaskan Niat dalam Beramal",
      ustadz: "Ust. Syafiq Riza Basalamah",
      category: "Tazkiyatun Nafs",
      date: "10 April 2026",
      summary: "Bahaya laten riya dan sum'ah yang dapat menghanguskan pahala amal jariyah sebesar apa pun di akhirat kelak.",
    ),
    Article(
      title: "Manisnya Iman dan Cara Merasakannya",
      ustadz: "Ust. Khalid Basalamah",
      category: "Aqidah",
      date: "08 April 2026",
      summary: "Pembahasan tiga perkara utama yang apabila ada pada diri seseorang, ia akan merasakan kelezatan dalam beribadah.",
    ),
    Article(
      title: "Panduan Fiqih Thaharah dan Bersuci",
      ustadz: "Ust. Firanda Andirja",
      category: "Fiqih",
      date: "05 April 2026",
      summary: "Mengulas tata cara bersuci dari hadas kecil maupun besar secara benar agar ibadah shalat kita dinilai sah.",
    ),
    Article(
      title: "Sabar Menghadapi Lisan Manusia",
      ustadz: "Ust. Syafiq Riza Basalamah",
      category: "Akhlak",
      date: "02 April 2026",
      summary: "Sikap terbaik seorang muslim ketika dicela, difitnah, atau dighibah oleh orang lain tanpa harus membalasnya dengan keburukan.",
    ),
    Article(
      title: "Keutamaan Sedekah Sirri (Sembunyi-sembunyi)",
      ustadz: "Ust. Khalid Basalamah",
      category: "Amalan",
      date: "30 Maret 2026",
      summary: "Dahsyatnya kekuatan sedekah yang dilakukan secara rahasia dalam memadamkan kemurkaan Allah dan menolak bala.",
    ),
  ];
}