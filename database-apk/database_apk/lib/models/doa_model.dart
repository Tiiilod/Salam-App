// lib/model/doa.dart
class Doa {
  final String title;
  final String arabic;
  final String latin;
  final String translation;

  Doa({
    required this.title, 
    required this.arabic, 
    required this.latin, 
    required this.translation
  });
}

class DoaDatabase {
  static List<Doa> allDoa = [
    Doa(
      title: "Doa Sebelum Tidur",
      arabic: "بِاسْمِكَ اللهم أَمُوتُ وَأَحْيَا",
      latin: "Bismika Allahumma amuutu wa ahyaa.",
      translation: "Dengan nama-Mu ya Allah aku mati dan aku hidup."
    ),
    Doa(
      title: "Doa Bangun Tidur",
      arabic: "الْحَمْدُ لِلَّهِ الَّذِي أَحْيَانَا بَعْدَ مَا أَمَاتَنَا وَإِلَيْهِ النُّشُورُ",
      latin: "Alhamdulillahilladzi ahyaana ba'da maa amaatana wa ilaihin nusyuur.",
      translation: "Segala puji bagi Allah yang menghidupkan kami setelah mematikan kami dan kepada-Nya kami kembali."
    ),
    Doa(
      title: "Doa Sebelum Makan",
      arabic: "بِسْمِ اللَّهِ الرَّحْمَنِ الرَّحِيمِ",
      latin: "Bismillahi ar-rahmani ar-rahim.",
      translation: "Artinya: Dengan nama Allah Yang Maha Pengasih lagi Maha Penyayang."
    ),
    Doa(
      title: "Doa Sesudah Makan",
      arabic: "الْحَمْدُ لِلَّهِ الَّذِي أَطْعَمَنَا وَسَقَانَا وَجَعَلَنَا مُسْلِمِينَ",
      latin: "Alhamdulillahilladzi ath'amanaa wa saqaanaa wa ja'alanaa muslimiin.",
      translation: "Segala puji bagi Allah yang telah memberi kami makan dan minum, serta menjadikan kami termasuk golongan orang-orang muslim."
    ),
    Doa(
      title: "Doa Masuk Kamar Mandi",
      arabic: "اللَّهُمَّ إِنِّي أَعُوذُ بِكَ مِنَ الْخُبُثِ وَالْخَبَائِثِ",
      latin: "Allahumma innii a'uudzu bika minal khubutsi wal khabaa-its.",
      translation: "Ya Allah, sesungguhnya aku berlindung kepada-Mu dari godaan setan laki-laki dan setan perempuan."
    ),
    Doa(
      title: "Doa Keluar Kamar Mandi",
      arabic: "غُفْرَانَكَ الْحَمْدُ لِلَّهِ الَّذِي أَذْهَبَ عَنِّي الْأَذَى وَعَافَانِي",
      latin: "Ghufranakal Alhamdulillahilladzi adzhaba 'annil adzaa wa 'aafaanii.",
      translation: "Aku memohon ampunan-Mu. Segala puji bagi Allah yang telah menghilangkan penyakit dari badanku dan menjaga kesehatanku."
    ),
    Doa(
      title: "Doa Keluar Rumah",
      arabic: "بِسْمِ اللَّهِ تَوَكَّلْتُ عَلَى اللَّهِ لَا حَوْلَ وَلَا قُوَّةَ إِلَّا بِاللَّهِ",
      latin: "Bismillaahi tawakkaltu 'alallaahi laa hawla wa laa quwwata illaa billaah.",
      translation: "Dengan nama Allah, aku berserah diri kepada Allah. Tidak ada daya dan kekuatan kecuali dengan pertolongan Allah."
    ),
    Doa(
      title: "Doa Masuk Rumah",
      arabic: "بِسْمِ اللَّهِ وَلَجْنَا وَبِسْمِ اللَّهِ خَرَجْنَا وَعَلَى اللَّهِ رَبِّنَا تَوَكَّلْنَا",
      latin: "Bismillaahi walajnaa wa bismillaahi kharajnaa wa 'alallaahi rabbinaa tawakkalnaa.",
      translation: "Dengan nama Allah kami masuk, dengan nama Allah kami keluar, dan kepada Allah Tuhan kami, kami berserah diri."
    ),
    Doa(
      title: "Doa Memakai Pakaian",
      arabic: "الْحَمْدُ لِلَّهِ الَّذِي كَسَانِي هَذَا الثَّوْبَ وَرَزَقَنِيهِ مِنْ غَيْرِ حَوْلٍ مِنِّي وَلَا قُوَّةٍ",
      latin: "Alhamdulillahilladzi kasaanii hadzats tsauba wa razaqaniihi min ghairi hawlin minnii wa laa quwwah.",
      translation: "Segala puji bagi Allah yang telah memakaikan pakaian ini kepadaku dan memberi rezeki amalan ini tanpa daya dan kekuatan dari diriku."
    ),
    Doa(
      title: "Doa Melepas Pakaian",
      arabic: "بِسْمِ اللَّهِ الَّذِي لَا إِلَهَ إِلَّا هُوَ",
      latin: "Bismillaahilladzi laa ilaaha illaa huwa.",
      translation: "Dengan nama Allah yang tiada Tuhan selain Dia."
    ),
    Doa(
      title: "Doa Sebelum Belajar",
      arabic: "رَبِّ زِدْنِي عِلْمًا وَارْزُقْنِي فَهْمًا",
      latin: "Rabbi zidnii 'ilman warzuqnii fahman.",
      translation: "Ya Tuhanku, tambahkanlah ilmu kepadaku dan berilah aku karunia untuk memahaminya."
    ),
    Doa(
      title: "Doa Masuk Masjid",
      arabic: "اللَّهُمَّ افْتَحْ لِي أَبْوَابَ رَحْمَتِكَ",
      latin: "Allahummaftah lii abwaaba rahmatik.",
      translation: "Ya Allah, bukakanlah bagiku pintu-pintu rahmat-Mu."
    ),
    Doa(
      title: "Doa Keluar Masjid",
      arabic: "اللَّهُمَّ إِنِّي أَسْأَلُكَ مِنْ فَضْلِكَ",
      latin: "Allahumma innii as-aluka min fadhlik.",
      translation: "Ya Allah, sesungguhnya aku memohon keutamaan dan karunia dari-Mu."
    ),
    Doa(
      title: "Doa Ketika Bercermin",
      arabic: "اللَّهُمَّ كَمَا حَسَّنْتَ خَلْقِي فَحَسِّنْ خُلُقِي",
      latin: "Allahumma kamaa hassanta khalqii fahassin khuluqii.",
      translation: "Ya Allah, sebagaimana Engkau telah memperbagus penciptaan rupa fisikku, maka perbaguslah pula akhlak dan perangaiku."
    ),
    Doa(
      title: "Doa Naik Kendaraan",
      arabic: "سُبْحَانَ الَّذِي سَخَّرَ لَنَا هَذَا وَمَا كُنَّا لَهُ مُقْرِنِينَ وَإِنَّا إِلَى رَبِّنَا لَمُنْقَلِبُونَ",
      latin: "Subhaanalladzi sakhkhara lanaa hadzaa wa maa kunnaa lahu muqriniin, wa innaa ilaa rabbinaa lamunqalibuun.",
      translation: "Maha Suci Allah yang telah menundukkan kendaraan ini bagi kami padahal kami sebelumnya tidak mampu menguasainya, dan sesungguhnya kami akan kembali kepada Tuhan kami."
    ),
    Doa(
      title: "Doa Ketika Turun Hujan",
      arabic: "اللَّهُمَّ صَيِّبًا نَافِعًا",
      latin: "Allahumma shayyiban naafi'an.",
      translation: "Ya Allah, turunkanlah hujan yang membawa manfaat dan kebaikan."
    ),
    Doa(
      title: "Doa Setelah Hujan",
      arabic: "مُطِرْنَا بِفَضْلِ اللَّهِ وَرَحْمَتِهِ",
      latin: "Muthirnaa bifadhliillaahi wa rahmatih.",
      translation: "Kita diberi hujan karena karunia kemurahan Allah dan rahmat-Nya."
    ),
    Doa(
      title: "Doa Untuk Orang Tua",
      arabic: "رَبِّ اغْفِرْ لِي وَلِوَالِدَيَّ وَارْحَمْهُمَا كَمَا رَبَّيَانِي صَغِيرًا",
      latin: "Rabbighfir lii waliwaalidayya warhamhumaa kamaa rabbayaanii shaghiiraa.",
      translation: "Ya Tuhanku, ampunilah dosa-dosaku dan dosa kedua orang tuaku, dan sayangilah mereka berdua sebagaimana mereka telah mendidikku di waktu kecil."
    ),
    Doa(
      title: "Doa Mohon Ampunan",
      arabic: "رَبَّنَا اغْفِرْ لَنَا ذُنُوبَنَا وَإِسْرَافَنَا فِي أَمْرِنَا وَثَبِّتْ أَقْدَامَنَا وَانْصُرْنَا عَلَى الْقَوْمِ الْكَافِرِينَ",
      latin: "Rabbunaghfir lanaa dzunuubanaa wa israafanaa fii amrinaa wa tsabbit aqdaamanaa wanshurnaa 'alal qawmil kaafiriin.",
      translation: "Ya Tuhan kami, ampunilah dosa-dosa kami dan tindakan-tindakan kami yang berlebihan dalam urusan kami, tetapkanlah pendirian kami, dan tolonglah kami terhadap kaum yang kafir."
    ),
    Doa(
      title: "Doa Sapu Jagad",
      arabic: "رَبَّنَا آتِنَا فِي الدُّنْيَا حَسَنَةً وَفِي الْآخِرَةِ حَسَنَةً وَقِنَا عَذَابَ النَّارِ",
      latin: "Rabbanaa aatinaa fid dunyaa hasanatan wa fil aakhirati hasanatan waqinaa 'adzaaban naar.",
      translation: "Ya Tuhan kami, berilah kami kebaikan di dunia dan kebaikan di akhirat, dan lindungilah kami dari siksa api neraka."
    ),
  ];
}