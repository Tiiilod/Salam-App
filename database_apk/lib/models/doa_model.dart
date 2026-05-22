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
    // --- TAMBAHAN 40 DOA BARU ---
    Doa(
      title: "Doa Memohon Kebaikan dan Petunjuk",
      arabic: "اللَّهُمَّ إِنِّي أَسْأَلُكَ الْهُدَى وَالتُّقَى وَالْعَفَافَ وَالْغِنَى",
      latin: "Allahumma innii as-alukal hudaa wat tuqaa wal 'afaafa wal ghinaa.",
      translation: "Ya Allah, sesungguhnya aku memohon kepada-Mu petunjuk, ketakwaan, kesucian diri, dan kecukupan."
    ),
    Doa(
      title: "Doa Agar Ditetapkan Hati dalam Iman",
      arabic: "يَا مُقَلِّبَ الْقُلُوبِ ثَبِّتْ قَلْبِي عَلَى دِينِكَ",
      latin: "Yaa muqallibal quluubi tsabbit qalbii 'alaa diinik.",
      translation: "Wahai Dzat yang membolak-balikkan hati, tetapkanlah hatiku di atas agama-Mu."
    ),
    Doa(
      title: "Doa Memohon Perlindungan dari Sifat Malas dan Pikun",
      arabic: "اللَّهُمَّ إِنِّي أَعُوذُ بِكَ مِنَ الْعَجْزِ وَالْكَسَلِ وَالْجُبْنِ وَالْهَرَمِ وَالْبُخْلِ",
      latin: "Allahumma innii a'uudzu bika minal 'ajzi wal kasali wal jubni wal harami wal bukhl.",
      translation: "Ya Allah, aku berlindung kepada-Mu dari kelemahan, kemalasan, sifat penakut, pikun, dan sifat kikir."
    ),
    Doa(
      title: "Doa Mohon Terbebas dari Utang",
      arabic: "اللَّهُمَّ اكْفِنِي بِحَلَالِكَ عَنْ حَرَامِكَ وَأَغْنِنِي بِفَضْلِكَ عَمَّنْ سِوَاكَ",
      latin: "Allahummakfinii bihalaalika 'an haraamika wa aghninii bifadhliika 'amman siwaak.",
      translation: "Ya Allah, cukupkanlah aku dengan rezeki-Mu yang halal hingga menjauhkan dari yang haram, dan kayakanlah aku dengan karunia-Mu dari bergantung kepada selain-Mu."
    ),
    Doa(
      title: "Doa Ketika Mengalami Kesulitan",
      arabic: "اللَّهُمَّ لَا سَهْلَ إِلَّا مَا جَعَلْتَهُ سَهْلًا وَأَنْتَ تَجْعَلُ الْحَزْنَ إِذَا شِئْتَ سَهْلًا",
      latin: "Allahumma laa sahla illaa maa ja'altahu sahlan, wa anta taj'alul hazna idzaa syi'ta sahlan.",
      translation: "Ya Allah, tidak ada kemudahan kecuali apa yang Engkau jadikan mudah. Dan Engkau dapat menjadikan kesedihan (kesulitan) menjadi kemudahan jika Engkau menghendaki."
    ),
    Doa(
      title: "Doa Menengok Orang Sakit",
      arabic: "اللَّهُمَّ رَبَّ النَّاسِ أَذْهِبِ الْبَأْسَ اشْفِ أَنْتَ الشَّافِي لَا شِفَاءَ إِلَّا شِفَاؤُكَ شِفَاءً لَا يُغَادِرُ سَقَمًا",
      latin: "Allahumma rabban naasi adzhibil ba'sa isyfi antas syaafii laa syifaaa-a illaa syifaa-uka syifaaa-an laa yughaadiru saqaman.",
      translation: "Ya Allah, Tuhan sekalian manusia, hilangkanlah penyakit ini. Sembuhkanlah, Engkaulah Yang Maha Menyembuhkan, tidak ada kesembuhan melainkan kesembuhan-Mu, kesembuhan yang tidak meninggalkan penyakit lain."
    ),
    Doa(
      title: "Doa Menghilangkan Rasa Sakit pada Tubuh",
      arabic: "أَعُوذُ بِبِعِزَّةِ اللَّهِ وَقُدْرَتِهِ مِنْ شَرِّ مَا أَجِدُ وَأُحَاذِرُ",
      latin: "A'uudzu bi'izzatillaahi wa qudratihii min syarri maa ajidu wa uhaadziru.",
      translation: "Aku berlindung dengan keperkasaan Allah dan kekuasaan-Nya dari keburukan yang aku rasakan dan aku khawatirkan."
    ),
    Doa(
      title: "Doa Agar Diberi Kemudahan Urusan dan Ucapan",
      arabic: "رَبِّ اشْرَحْ لِي صَدْرِي وَيَسِّرْ لِي أَمْرِي وَاحْلُلْ عُقْدَةً مِنْ لِسَانِي يَفْقَهُوا قَوْلِي",
      latin: "Rabbisy rahlia shadrii wa yassir lii amrii wahlul 'uqdatan min lisaanii yafqahuu qawlii.",
      translation: "Ya Tuhanku, lapangkanlah dadaku, mudahkanlah urusanku, dan lepaskanlah kaku dari lidahku agar mereka mengerti perkataanku."
    ),
    Doa(
      title: "Doa Ketika Masuk Pasar atau Mall",
      arabic: "لَا إِلَهَ إِلَّا اللَّهُ وَحْدَهُ لَا شَرِيكَ لَهُ لَهُ الْمُلْكُ وَلَهُ الْحَمْدُ يُحْيِي وَيُمِيتُ وَهُوَ حَيٌّ لَا يَمُوتُ بِيَدِهِ الْخَيْرُ وَهُوَ عَلَى كُلِّ شَيْءٍ قَدِيرٌ",
      latin: "Laa ilaaha illallaahu wahdahu laa syariika lah, lahul mulku wa lahul hamdu yuhyii wa yumiitu wa huwa hayyun laa yamuutu biyadihil khairu wa huwa 'alaa kulli syai-in qadiir.",
      translation: "Tidak ada Tuhan yang berhak disembah selain Allah semata, tidak ada sekutu bagi-Nya. Bagi-Nya kerajaan dan bagi-Nya segala puji. Dia yang menghidupkan dan yang mematikan. Dia Maha Hidup dan tidak mati. Di tangan-Nyalah segala kebaikan dan Dia Maha Kuasa atas segala sesuatu."
    ),
    Doa(
      title: "Doa Ketika Mendengar Petir",
      arabic: "سُبْحَانَ الَّذِي يُسَبِّحُ الرَّعْدُ بِحَمْدِهِ وَالْمَلَائِكَةُ مِنْ خِيفَتِهِ",
      latin: "Subhaanalladzi yusabbihur ra'du bihamdihii wal malaaa-ikatu min khiifatih.",
      translation: "Maha Suci Allah yang petir bertasbih dengan memuji-Nya, begitu juga para malaikat karena takut kepada-Nya."
    ),
    Doa(
      title: "Doa Ketika Tertimpa Musibah",
      arabic: "إِنَّا لِلَّهِ وَإِنَّا إِلَيْهِ رَاجِعُونَ اللَّهُمَّ أْجُرْنِي فِي مُصِيبَتِي وَأَخْلِفْ لِي خَيْرًا مِنْهَا",
      latin: "Innaa lillaahi wa innaa ilaihi raaji'uun. Allahumma' jurnii fii mushiibatii wa akhlif lii khairan minhaa.",
      translation: "Sesungguhnya kami adalah milik Allah dan kepada-Nya-lah kami kembali. Ya Allah, berilah pahala dalam musibahku ini dan gantikanlah untukku dengan yang lebih baik darinya."
    ),
    Doa(
      title: "Doa Ketika Marah",
      arabic: "أَعُوذُ بِاللَّهِ مِنَ الشَّيْطَانِ الرَّجِيمِ",
      latin: "A'uudzu billaahi minas syaithaanir rajiim.",
      translation: "Aku berlindung kepada Allah dari godaan setan yang terkutuk."
    ),
    Doa(
      title: "Doa Keluar Kamar Mandi (Versi Pendek)",
      arabic: "غُفْرَانَكَ",
      latin: "Ghufraanaka.",
      translation: "Aku memohon ampunan-Mu."
    ),
    Doa(
      title: "Doa Mendengar Azan",
      arabic: "اللَّهُمَّ رَبَّ هَذِهِ الدَّعْوَةِ التَّامَّةِ وَالصَّلَاةِ الْقَائِمَةِ آتِ مُحَمَّدًا الْوَسِيلَةَ وَالْفَضِيلَةَ وَابْعَثْهُ مَقَامًا مَحْمُودًا الَّذِي وَعَدْتَهُ",
      latin: "Allahumma rabba haadzihid da'watit taammati was shalaatil qaa-imati aati Muhammadanil wasiilata wal fadhiilata wab'atshu maqaaman mahmuudanil ladzii wa'adtah.",
      translation: "Ya Allah, Pemilik panggilan yang sempurna ini dan shalat yang didirikan, berilah Nabi Muhammad wasilah (kedudukan tinggi) dan keutamaan, dan bangkitkanlah beliau di tempat yang terpuji yang telah Engkau janjikan."
    ),
    Doa(
      title: "Doa Kafaratul Majelis (Penutup Rapat/Acara)",
      arabic: "سُبْحَانَكَ اللَّهُمَّ وَبِحَمْدِكَ أَشْهَدُ أَنْ لَا إِلَهَ إِلَّا أَنْتَ أَسْتَغْفِرُكَ وَأَتُوبُ إِلَيْكَ",
      latin: "Subhaanaka Allahumma wa bihamdika asyhadu allaa ilaaha illaa anta astaghfiruka wa atuubu ilaik.",
      translation: "Maha Suci Engkau, ya Allah, dan dengan memuji-Mu, aku bersaksi bahwa tidak ada Tuhan yang berhak disembah selain Engkau, aku memohon ampunan-Mu dan bertobat kepada-Mu."
    ),
    Doa(
      title: "Doa Mohon Perlindungan dari Siksa Kubur dan Dajjal",
      arabic: "اللَّهُمَّ إِنِّي أَعُوذُ بِكَ مِنْ عَذَابِ جَهَنَّمَ وَمِنْ عَذَابِ الْقَبْرِ وَمِنْ فِتْنَةِ الْمَحْيَا وَالْمَمَاتِ وَمِنْ شَرِّ فِتْنَةِ الْمَسِيحِ الدَّجَّالِ",
      latin: "Allahumma innii a'uudzu bika min 'adzaabi jahannama wa min 'adzaabil qabri wa min fitnatil mahyaa wal mamaati wa min syarri fitnatil masiihid dajjaal.",
      translation: "Ya Allah, sesungguhnya aku berlindung kepada-Mu dari siksa neraka Jahannam, dari siksa kubur, dari fitnah kehidupan dan kematian, serta dari keburukan fitnah Al-Masih Ad-Dajjal."
    ),
    Doa(
      title: "Doa Memohon Keturunan yang Saleh",
      arabic: "رَبِّ هَبْ لِي مِنْ لَدُنْكَ ذُرِّيَّةً طَيِّبَةً إِنَّكَ سَمِيعُ الدُّعَاءِ",
      latin: "Rabbi hab lii mil ladunka dzurriyyatan thayyibatan innaka samii'ud du'aa.",
      translation: "Ya Tuhanku, berilah aku dari sisi-Mu seorang anak yang baik. Sesungguhnya Engkau Maha Mendengar doa."
    ),
    Doa(
      title: "Doa Keharmonisan Keluarga (Keluarga Sakinah)",
      arabic: "رَبَّنَا هَبْ لَنَا مِنْ أَزْوَاجِنَا وَذُرِّيَّاتِنَا قُرَّةَ أَعْيُنٍ وَاجْعَلْنَا لِلْمُتَّقِينَ إِمَامًا",
      latin: "Rabbanaa hab lanaa min azwaajinaa wa dzurriyyaatinaa qurrata a'yunin waj'alnaa lil muttaqiina imaamaa.",
      translation: "Ya Tuhan kami, anugerahkanlah kepada kami pasangan kami dan keturunan kami sebagai penyenang hati (kami), dan jadikanlah kami imam bagi orang-orang yang bertakwa."
    ),
    Doa(
      title: "Doa Selamat Dunia Akhirat",
      arabic: "اللَّهُمَّ إِنَّا نَسْأَلُكَ سَلَامَةً فِي الدِّينِ وَعَافِيَةً فِي الْجَسَدِ وَزِيَادَةً فِي الْعِلْمِ وَبَرَكَةً فِي الرِّزْقِ وتَوْبَةً قَبْلَ الْمَوْتِ",
      latin: "Allahumma innaa nas-aluka salaamatan fid diini wa 'aafiyatan fil jasadi wa ziyaadatan fil 'ilmi wa barakatan fir rizqi wa taubatan qablal maut.",
      translation: "Ya Allah, sesungguhnya kami memohon kepada-Mu keselamatan dalam agama, kesehatan jasmani, bertambahnya ilmu, keberkahan rezeki, dan tobat sebelum mati."
    ),
    Doa(
      title: "Doa Saat Sujud Syukur",
      arabic: "سَجَدَ وَجْهِي لِلَّذِي خَلَقَهُ وَصَوَّرَهُ وَشَقَّ سَمْعَهُ وَبَصَرَهُ بِحَوْلِهِ وَقُوَّتِهِ",
      latin: "Sajada wajhiya lilladzii khalaqahuu wa shawwarahuu wa syaqqa sam'ahuu wa basharahuu bihaulihii wa quwwatih.",
      translation: "Wajahku bersujud kepada Dzat yang menciptakan dan membentuknya, serta yang membelah pendengaran dan penglihatannya dengan daya dan kekuatan-Nya."
    ),
    Doa(
      title: "Doa Ketika Bercermin (Versi Lain)",
      arabic: "الْحَمْدُ لِلَّهِ اللَّهُمَّ كَمَا حَسَّنْتَ خَلْقِي فَحَسِّنْ خُلُقِي وَحَرِّمْ وَجْهِي عَلَى النَّارِ",
      latin: "Alhamdulillaahi Allahumma kamaa hassanta khalqii fahassin khuluqii wa harrim wajhii 'alan naar.",
      translation: "Segala puji bagi Allah. Ya Allah, sebagaimana Engkau telah memperbagus penciptaan rupaku, maka perbaguslah pula akhlakku dan haramkanlah wajahku dari api neraka."
    ),
    Doa(
      title: "Doa Memohon Rezeki yang Luas",
      arabic: "اللَّهُمَّ إِنِّي أَسْأَلُكَ عِلْمًا نَافِعًا وَرِزْقًا طَيِّبًا وَعَمَلًا مُتَقَبَّلًا",
      latin: "Allahumma innii as-aluka 'ilman naafi'an wa rizqan thayyiban wa 'amalan mutaqabbalan.",
      translation: "Ya Allah, sesungguhnya aku memohon kepada-Mu ilmu yang bermanfaat, rezeki yang baik (halal), dan amal yang diterima."
    ),
    Doa(
      title: "Doa Ketika Mengalami Mimpi Buruk",
      arabic: "اللَّهُمَّ إِنِّي أَعُوذُ بِكَ مِنْ عَمَلِ الشَّيْطَانِ وَسَيِّئَاتِ الْأَحْلَامِ",
      latin: "Allahumma innii a'uudzu bika min 'amalis syaithaani wa sayyi-aatil ahlaam.",
      translation: "Ya Allah, sesungguhnya aku berlindung kepada-Mu dari perbuatan setan dan dari mimpi-mimpi yang buruk."
    ),
    Doa(
      title: "Doa Saat Mengalami Mimpi Baik",
      arabic: "الْحَمْدُ لِلَّهِ الَّذِي بِنِعْمَتِهِ تَتِمُّ الصَّالِحَاتُ",
      latin: "Alhamdulillahilladzi bini'matihii tatimmus shaalihaat.",
      translation: "Segala puji bagi Allah yang dengan nikmat-Nya kebaikan-kebaikan menjadi sempurna."
    ),
    Doa(
      title: "Doa Membuka Aurat (Saat Mandi/Ganti Baju)",
      arabic: "بِسْمِ اللَّهِ الَّذِي لَا إِلَهَ إِلَّا هُوَ",
      latin: "Bismillaahilladzi laa ilaaha illaa huwa.",
      translation: "Dengan nama Allah yang tiada Tuhan selain Dia."
    ),
    Doa(
      title: "Doa Ketika Berwudu (Saat Membasuh Muka)",
      arabic: "اللَّهُمَّ بَيِّضْ وَجْهِي يَوْمَ تَبْيَضُّ وُجُوهٌ وَتَسْوَدُّ وُجُوهٌ",
      latin: "Allahumma bayyidh wajhii yauma tabyadh-dhu wujuuhun wa taswaddu wujuuh.",
      translation: "Ya Allah, putihkanlah (cerahkanlah) wajahku pada hari ketika wajah-wajah menjadi putih berseri dan ada wajah yang hitam legam."
    ),
    Doa(
      title: "Doa Selesai Berwudu",
      arabic: "أَشْهَدُ أَنْ لَا إِلَهَ إِلَّا اللَّهُ وَحْدَهُ لَا شَرِيكَ لَهُ وَأَشْهَدُ أَنَّ مُحَمَّدًا عَبْدُهُ وَرَسُولُهُ اللَّهُمَّ اجْعَلْنِي مِنَ التَّوَّابِينَ وَاجْعَلْنِي مِنَ الْمُتَطَهِّرِينَ",
      latin: "Asyhadu allaa ilaaha illallaahu wahdahu laa syariika lah, wa asyhadu anna Muhammadan 'abduhuu wa rasuuluh. Allahummaj 'alnii minat tawwabiina waj'alnii minal mutathahhiriin.",
      translation: "Aku bersaksi bahwa tidak ada Tuhan selain Allah Yang Maha Esa, tidak ada sekutu bagi-Nya, dan aku bersaksi bahwa Nabi Muhammad adalah hamba dan utusan-Nya. Ya Allah, jadikanlah aku termasuk orang-orang yang bertobat dan jadikanlah aku termasuk orang-orang yang menyucikan diri."
    ),
    Doa(
      title: "Doa Masuk Kota/Daerah Baru",
      arabic: "اللَّهُمَّ بَارِكْ لَنَا فِيهَا",
      latin: "Allahumma baarik lanaa fiihaa.",
      translation: "Ya Allah, berkahilah kami di dalam kota/daerah ini."
    ),
    Doa(
      title: "Doa Ketika Melihat Sesuatu yang Mengagumkan",
      arabic: "مَا شَاءَ اللَّهُ لَا قُوَّةَ إِلَّا بِاللَّهِ",
      latin: "Maa syaaa-allaahu laa quwwata illaa billaah.",
      translation: "Semua ini atas kehendak Allah, tidak ada kekuatan kecuali dengan pertolongan Allah."
    ),
    Doa(
      title: "Doa Ketika Ditimpa Keraguan dalam Iman",
      arabic: "آمَنْتُ بِاللَّهِ وَرُسُلِهِ",
      latin: "Aamantu billaahi wa rusulih.",
      translation: "Aku beriman kepada Allah dan para utusan-Nya."
    ),
    Doa(
      title: "Doa Agar Diberi Umur Panjang dan Berkah",
      arabic: "اللَّهُمَّ أَكْثِرْ مَالِي وَوَلَدِي وَبَارِكْ لِي فِيمَا أَعْطَيْتَنِي",
      latin: "Allahumma aktsir maalii wa waladii wa baarik lii fiimaa a'thaitanii.",
      translation: "Ya Allah, perbanyaklah harta dan anakku, serta berkahilah apa yang telah Engkau berikan kepadaku."
    ),
    Doa(
      title: "Doa Memohon Kemuliaan Bagi Kedua Orang Tua",
      arabic: "رَبَّنَا اغْفِرْ لِي وَلِوَالِدَيَّ وَلِلْمُؤْمِنِينَ يَوْمَ يَقُومُ الْحِسَابُ",
      latin: "Rabbunaghfir lii waliwaalidayya walilmuk-miniina yauma yaquumul hisaab.",
      translation: "Ya Tuhan kami, ampunilah aku dan kedua ibu bapakku dan sekalian orang-orang mukmin pada hari terjadinya hitungan (hari kiamat)."
    ),
    Doa(
      title: "Doa Berdiri dari Tempat Duduk (Majelis)",
      arabic: "سُبْحَانَ رَبِّكَ رَبِّ الْعِزَّةِ عَمَّا يَصِفُونَ وَسَلَامٌ عَلَى الْمُرْسَلِينَ وَالْحَمْدُ لِلَّهِ رَبِّ الْعَالَمِينَ",
      latin: "Subhaana rabbika rabbil 'izzati 'ammaa yashifuun, wa salaamun 'alal mursaliina wal hamdu lillaahi rabbil 'aalamiin.",
      translation: "Maha Suci Tuhanmu, Tuhan yang memiliki keperkasaan dari apa yang mereka sifatkan. Dan selamat sejahtera atas para rasul, dan segala puji bagi Allah, Tuhan semesta alam."
    ),
    Doa(
      title: "Doa Ketika Mengalami Kegundahan/Stres",
      arabic: "اللَّهُمَّ رَحْمَتَكَ أَرْجُو فَلَا تَكِلْنِي إِلَى نَفْسِي طَرْفَةَ عَيْنٍ وَأَصْلِحْ لِي شَأْنِي كُلَّهُ لَا إِلَهَ إِلَّا أَنْتَ",
      latin: "Allahumma rahmataka arjuu falaa takilnii ilaa nafsii tharfata 'ainin wa ashlih lii sya'nii kullahu laa ilaaha illaa anta.",
      translation: "Ya Allah, hanya rahmat-Mu yang aku harapkan, maka janganlah Engkau serahkan urusanku kepada diriku sendiri walau sekejap mata, dan perbaikilah segala urusanku, tidak ada Tuhan yang berhak disembah selain Engkau."
    ),
    Doa(
      title: "Doa Berlindung dari Penyakit Berbahaya",
      arabic: "اللَّهُمَّ إِنِّي أَعُوذُ بِكَ مِنَ الْبَرَصِ وَالْجُنُونِ وَالْجُذَامِ وَمِنْ سَيِّئِ الْأَسْقَامِ",
      latin: "Allahumma innii a'uudzu bika minal barashi wal junuuni wal judzaami wa min sayyi-il asqaam.",
      translation: "Ya Allah, sesungguhnya aku berlindung kepada-Mu dari penyakit sopak (belang), gila, kusta, dan dari segala penyakit yang buruk/mengerikan."
    ),
    Doa(
      title: "Doa Memohon Kematian yang Baik (Husnul Khatimah)",
      arabic: "اللَّهُمَّ اجْعَلْ خَيْرَ عُمْرِي آخِرَهُ وَخَيْرَ عَمَلِي خَوَاتِمَهُ وَخَيْرَ أَيَّامِي يَوْمَ أَلْقَاكَ",
      latin: "Allahummaj 'al khaira 'umrii aakhirahu wa khaira 'amalii khawaatimahu wa khaira ayyaamii yauma alqaak.",
      translation: "Ya Allah, jadikanlah sebaik-baik umurku pada ujungnya, dan sebaik-baik amalku pada akhir kesudahannya, dan sebaik-baik hariku adalah hari di saat aku menemui-Mu."
    ),
    Doa(
      title: "Doa Mohon Perlindungan dari Godaan Setan (Saat Membaca Al-Qur'an)",
      arabic: "أَعُوذُ بِاللَّهِ السَّمِيعِ الْعَلِيمِ مِنَ الشَّيْطَانِ الرَّجِيمِ",
      latin: "A'uudzu billahis samii'il 'aliimi minas syaithaanir rajiim.",
      translation: "Aku berlindung kepada Allah Yang Maha Mendengar lagi Maha Mengetahui dari godaan setan yang terkutuk."
    ),
    Doa(
      title: "Doa Syukur Atas Nikmat Kesehatan",
      arabic: "اللَّهُمَّ عَافِنِي فِي بَدَنِي اللَّهُمَّ عَافِنِي فِي سَمْعِي اللَّهُمَّ عَافِنِي فِي بَصَرِي لَا إِلَهَ إِلَّا أَنْتَ",
      latin: "Allahumma 'aafinii fii badanii, Allahumma 'aafinii fii sam'ii, Allahumma 'aafinii fii basharii, laa ilaaha illaa anta.",
      translation: "Ya Allah, sehatkanlah badanku. Ya Allah, sehatkanlah pendengaranku. Ya Allah, sehatkanlah penglihatanku. Tidak ada Tuhan yang berhak disembah selain Engkau."
    ),
    Doa(
      title: "Doa Ketika Membayar Zakat/Sedekah",
      arabic: "رَبَّنَا تَقَبَّلْ مِنَّا إِنَّكَ أَنْتَ السَّمِيعُ الْعَلِيمُ",
      latin: "Rabbanaa taqabbal minnaa innaka antas samii'ul 'aliim.",
      translation: "Ya Tuhan kami, terimalah amalan dari kami. Sesungguhnya Engkau-lah Yang Maha Mendengar lagi Maha Mengetahui."
    ),
    Doa(
      title: "Doa Penerima Zakat/Sedekah untuk Pemberi",
      arabic: "آجَرَكَ اللَّهُ فِيمَا أَعْطَيْتَ وَبَارَكَ فِيمَا أَبْقَيْتَ وَجَعَلَهُ لَكَ طَهُورًا",
      latin: "Aajaraka-llaahu fiimaa a'thaita wa baaraka fiimaa abqaita wa ja'alahu laka thahuuraa.",
      translation: "Semoga Allah memberikan pahala atas apa yang telah engkau berikan, dan memberikan berkah atas harta yang engkau simpan, serta menjadikannya sebagai pembersih bagimu."
    ),
    // --- TAMBAHAN 30 DOA BARU ---
    Doa(
      title: "Doa Ayat Kursi (Perlindungan Utama)",
      arabic: "اللَّهُ لَا إِلَهَ إِلَّا HUW AL-HAYYUL-QAYYUM LA TAAKHUDZUHUU SINATUW WA LAA NAUM",
      latin: "Allaahu laa ilaaha illaa huwal hayyul qayyuum, laa ta'khudzuhu sinatuw wa laa naum.",
      translation: "Allah, tidak ada tuhan selain Dia. Yang Maha Hidup, yang terus-menerus mengurus (makhluk-Nya), tidak mengantuk dan tidak tidur."
    ),
    Doa(
      title: "Doa Memohon Ketetapan Shalat bagi Diri dan Keturunan",
      arabic: "رَبِّ اجْعَلْنِي مُقِيمَ الصَّلَاةِ وَمِنْ ذُرِّيَّتِي رَبَّنَا وَتَقَبَّلْ دُعَاءِ",
      latin: "Rabbij'alnii muqiimas shalaati wa min dzurriyyatii rabbanaa wa taqabbal du'aa.",
      translation: "Ya Tuhanku, jadikanlah aku dan anak cucuku orang yang tetap melaksanakan shalat, ya Tuhan kami, perkenankanlah doaku."
    ),
    Doa(
      title: "Doa Agar Terhindar dari Kesyirikan",
      arabic: "اللَّهُمَّ إِنِّي أَعُوذُ بِكَ أَنْ أُشْرِكَ بِكَ وَأَنَا أَعْلَمُ وَأَسْتَغْفِرُكَ لِمَا لَا أَعْلَمُ",
      latin: "Allahumma innii a'uudzu bika an usyrika bika wa ana a'lamu wa astaghfiruka limaa laa a'lamu.",
      translation: "Ya Allah, sesungguhnya aku berlindung kepada-Mu dari mempersekutukan-Mu sedangkan aku mengetahuinya, dan aku memohon ampunan-Mu dari apa yang tidak aku ketahui."
    ),
    Doa(
      title: "Doa Memohon Perlindungan dari Setan Sebelum Tidur",
      arabic: "أَعُوذُ بِكَلِمَاتِ اللَّهِ التَّامَّاتِ مِنْ غَضَبِهِ وَعِقَابِهِ وَشَرِّ عِبَادِهِ",
      latin: "A'uudzu bikalimaatillaahit taammaati min ghadhabihii wa 'iqaabihii wa syarri 'ibaadih.",
      translation: "Aku berlindung dengan kalimat-kalimat Allah yang sempurna dari kemurkaan-Nya, siksaan-Nya, dan dari keburukan hamba-hamba-Nya."
    ),
    Doa(
      title: "Doa Ketika Mendengar Ayam Berkoko (Memohon Karunia)",
      arabic: "اللَّهُمَّ إِنِّي أَسْأَلُكَ مِنْ فَضْلِكَ",
      latin: "Allahumma innii as-aluka min fadhlik.",
      translation: "Ya Allah, sesungguhnya aku memohon sebagian dari karunia-Mu."
    ),
    Doa(
      title: "Doa Ketika Mendengar Keledai Meringkik (Perlindungan Setan)",
      arabic: "أَعُوذُ بِاللَّهِ مِنَ الشَّيْطَانِ الرَّجِيمِ",
      latin: "A'uudzu billaahi minas syaithaanir rajiim.",
      translation: "Aku berlindung kepada Allah dari godaan setan yang terkutuk."
    ),
    Doa(
      title: "Doa Singgah di Suatu Tempat Saat Safar",
      arabic: "أَعُوذُ بِكَلِمَاتِ اللَّهِ التَّامَّاتِ مِنْ شَرِّ مَا خَلَقَ",
      latin: "A'uudzu bikalimaatillaahit taammaati min syarri maa khalaq.",
      translation: "Aku berlindung dengan kalimat-kalimat Allah yang sempurna dari keburukan apa yang Dia ciptakan."
    ),
    Doa(
      title: "Doa Melepas Pakaian Agar Terhindar dari Pandangan Jin",
      arabic: "بِسْمِ اللَّهِ الَّذِي لَا إِلَهَ إِلَّا هُوَ",
      latin: "Bismillaahilladzi laa ilaaha illaa huwa.",
      translation: "Dengan nama Allah yang tiada Tuhan selain Dia."
    ),
    Doa(
      title: "Doa Ketika Memasuki Bulan Baru (Melihat Hilal)",
      arabic: "اللَّهُمَّ أَهِلَّهُ عَلَيْنَا بِالْأَمْنِ وَالْإِيمَانِ وَالسَّلَامَةِ وَالْإِسْلَامِ",
      latin: "Allahumma ahillahu 'alaina bil amni wal iimaani was salaamati wal islaam.",
      translation: "Ya Allah, tampakkanlah bulan itu kepada kami dengan membawa keamanan, keimanan, keselamatan, dan Islam."
    ),
    Doa(
      title: "Doa Istikharah (Mohon Petunjuk Pilihan Terbaik)",
      arabic: "اللَّهُمَّ إِنِّي أَسْتَخِيرُكَ بِعِلْمِكَ وَأَسْتَقْدِرُكَ بِقُدْرَتِكَ وَأَسْأَلُكَ مِنْ فَضْلِكَ الْعَظِيمِ",
      latin: "Allahumma innii astakhiiruka bi'ilmika wa astaqdiruka biqudratika wa as-aluka min fadhlikal 'adzhiim.",
      translation: "Ya Allah, sesungguhnya aku meminta pilihan yang baik kepada-Mu dengan ilmu-Mu, aku memohon kekuatan dengan kekuatan-Mu, dan aku memohon karunia-Mu yang agung."
    ),
    Doa(
      title: "Doa Penolak Bala dan Kesengsaraan",
      arabic: "اللَّهُمَّ إِنِّي أَعُوذُ بِكَ مِنْ جَهْدِ الْبَلَاءِ وَدَرَكِ الشَّقَاءِ وَسُوءِ الْقَضَاءِ",
      latin: "Allahumma innii a'uudzu bika min jahdil balaa-i wa darakis syaqaa-i wa suu-il qadhaa-i.",
      translation: "Ya Allah, sesungguhnya aku berlindung kepada-Mu dari beban bencana yang berat, kesengsaraan yang menimpa, takdir yang buruk, dan kegembiraan musuh atas musibahku."
    ),
    Doa(
      title: "Doa Memohon Ampunan Atas Segala Dosa (Besar Maupun Kecil)",
      arabic: "اللَّهُمَّ اغْفِرْ لِي ذَنْبِي كُلَّهُ دِقَّهُ وَجِلَّهُ وَأَوَّلَهُ وَآخِرَهُ وَعَلَانِيَتَهُ وَسِرَّهُ",
      latin: "Allahummaghfir lii dzanbii kullahu diqqahu wa jillahu wa awwalahu wa aakhirahu wa 'alaaniyatahu wa sirrah.",
      translation: "Ya Allah, ampunilah seluruh dosaku, yang kecil maupun yang besar, yang awal maupun yang akhir, yang terang-terangan maupun yang tersembunyi."
    ),
    Doa(
      title: "Doa Mohon Perlindungan dari Fitnah Wanita dan Dunia",
      arabic: "اللَّهُمَّ إِنِّي أَعُوذُ بِكَ مِنْ فِتْنَةِ الدُّنْيَا وَفِتْنَةِ النِّسَاءِ",
      latin: "Allahumma innii a'uudzu bika min fitnatid dunyaa wa fitnatin nisaa.",
      translation: "Ya Allah, sesungguhnya aku berlindung kepada-Mu dari fitnah (ujian) dunia dan fitnah kaum wanita."
    ),
    Doa(
      title: "Doa Perlindungan Pagi dan Sore (Bismillahilladzi)",
      arabic: "بِسْمِ اللَّهِ الَّذِي لَا يَضُرُّ مَعَ اسْمِهِ شَيْءٌ فِي الْأَرْضِ وَلَا فِي السَّمَاءِ وَهُوَ السَّمِيعُ الْعَلِيمُ",
      latin: "Bismillaahilladzi laa yadhurru ma'asmihi syai-un fil ardhi wa laa fis samaa-i wa huwas samii'ul 'aliim.",
      translation: "Dengan nama Allah yang bila disebut, segala sesuatu di bumi dan di langit tidak akan berbahaya, dan Dia Maha Mendengar lagi Maha Mengetahui."
    ),
    Doa(
      title: "Doa Mohon Terhindar dari Sifat Munafik dan Riya",
      arabic: "اللَّهُمَّ طَهِّرْ قَلْبِي مِنَ النِّفَاقِ وَعَمَلِي مِنَ الرِّيَاءِ وَلِسَانِي مِنَ الْكَذِبِ",
      latin: "Allahumma thahhir qalbii minan nifaaqi wa 'amalii minar riyaa-i wa lisaanii minal kadzib.",
      translation: "Ya Allah, bersihkanlah hatiku dari kemunafikan, amalku dari riya, dan lisanku dari kebohongan."
    ),
    Doa(
      title: "Doa Menghadapi Musuh atau Orang Berkuasa yang Zalim",
      arabic: "اللَّهُمَّ إِنَّا نَجْعَلُكَ فِي نُحُورِهِمْ وَنَعُوذُ بِكَ مِنْ شُرُورِهِمْ",
      latin: "Allahumma innaa naj'aluka fii nuhuurihim wa na'uudzu bika min syuruurihim.",
      translation: "Ya Allah, sesungguhnya kami menjadikan Engkau di leher-leher mereka (untuk membendungnya) dan kami berlindung kepada-Mu dari keburukan mereka."
    ),
    Doa(
      title: "Doa Penenang Hati Saat Mengalami Ketakutan",
      arabic: "حَسْبُنَا اللَّهُ وَنِعْمَ الْوَكِيلُ",
      latin: "Hasbunallaahu wa ni'mal wakiil.",
      translation: "Cukuplah Allah menjadi Penolong kami dan Allah adalah sebaik-baik Pelindung."
    ),
    Doa(
      title: "Doa Saat Mengenakan Pakaian Baru",
      arabic: "اللَّهُمَّ لَكَ الْحَمْدُ أَنْتَ كَسَوْتَنِيهِ أَسْأَلُكَ مِنْ خَيْرِهِ وَخَيْرِ مَا صُنِعَ لَهُ",
      latin: "Allahumma lakal hamdu anta kasautanihi as-aluka min khairihi wa khairi maa shuni'a lah.",
      translation: "Ya Allah, hanya milik-Mu segala puji, Engkau yang telah memakaikan pakaian ini kepadaku. Aku memohon kebaikannya dan kebaikan dari tujuan pembuatannya."
    ),
    Doa(
      title: "Doa Ketika Makan Lupa Membaca Basmalah di Awal",
      arabic: "بِسْمِ اللَّهِ فِي أَوَّلِهِ وَآخِرِهِ",
      latin: "Bismillaahi fii awwalihii wa aakhirihi.",
      translation: "Dengan nama Allah pada awal dan akhirnya."
    ),
    Doa(
      title: "Doa Ketika Menjamu Orang yang Memberi Makanan",
      arabic: "اللَّهُمَّ أَطْعِمْ مَنْ أَطْعَمَنِي وَاسْقِ مَنْ سَقَانِي",
      latin: "Allahumma ath'im man ath'amanii wasqi man saqaanii.",
      translation: "Ya Allah, berilah makanan kepada orang yang memberi makan kepadaku dan berilah minuman kepada orang yang memberi minum kepadaku."
    ),
    Doa(
      title: "Doa Berbuka Puasa",
      arabic: "ذَهَبَ الظَّمَأُ وَابْتَلَّتِ الْعُرُوقُ وَثَبَتَ الْأَجْرُ إِنْ شَاءَ اللَّهُ",
      latin: "Dzahabadz dhamau wabtallatil 'uruuqu wa tsabatal ajru in syaa-allaah.",
      translation: "Rasa haus telah hilang, urat-urat telah basah, dan pahala telah ditetapkan, insya Allah."
    ),
    Doa(
      title: "Doa Perlindungan untuk Anak-Anak dari Gangguan Syetan/Sihir",
      arabic: "أُعِيذُكُمَا بِكَلِمَاتِ اللَّهِ التَّامَّةِ مِنْ كُلِّ شَيْطَانٍ وَهَامَّةٍ وَمِنْ كُلِّ عَيْنٍ لَامَّةٍ",
      latin: "U'iidzukumaa bikalimaatillaahit taammaati min kulli syaithaanin wa haammatin wa min kulli 'ainin laammatih.",
      translation: "Aku lindungi kalian berdua dengan kalimat Allah yang sempurna dari setiap setan, binatang berbisa, dan dari setiap mata yang mendatangkan keburukan ('Ain)."
    ),
    Doa(
      title: "Doa Ketika Bersin dan Mendengar Orang Bersin",
      arabic: "الْحَمْدُ لِلَّهِ - يَرْحَمُكَ اللَّهُ - يَهْدِيكُمُ اللَّهُ وَيُصْلِحُ بَالَكُمْ",
      latin: "Alhamdulillaah - Yarhamukallaah - Yahdiikumullaahu wa yushlihu baalakum.",
      translation: "Segala puji bagi Allah - Semoga Allah merahmatimu - Semoga Allah memberimu petunjuk dan memperbaiki keadaanmu."
    ),
    Doa(
      title: "Doa Pernikahan (Ucapan Selamat untuk Pengantin)",
      arabic: "بَارَكَ اللَّهُ لَكَ وَبَارَكَ عَلَيْكَ وَجَمَعَ بَيْنَكُمَا فِي خَيْرٍ",
      latin: "Baarakallaahu laka wa baaraka 'alaika wa jama'a bainakumaa fii khairin.",
      translation: "Semoga Allah memberikan berkah kepadamu, semoga berkah-Nya tetap tercurah di atasmu, dan semoga Dia mengumpulkan kalian berdua dalam kebaikan."
    ),
    Doa(
      title: "Doa Memohon Kemudahan Menghadapi Sakaratul Maut",
      arabic: "اللَّهُمَّ أَعِنِّي عَلَى غَمَرَاتِ الْمَوْتِ وَسَكَرَاتِ الْمَوْتِ",
      latin: "Allahumma a'innii 'alaa ghamaraatil mauti wa sakaraatil maut.",
      translation: "Ya Allah, tolonglah aku dalam menghadapi kepedihan mati dan sakaratul maut."
    ),
    Doa(
      title: "Doa Memohon Hati yang Bersih dan Jiwa yang Tenang",
      arabic: "اللَّهُمَّ آتِ نَفْسِي تَقْوَاهَا وَزَكِّهَا أَنْتَ خَيْرُ مَنْ زَكَّاهَا أَنْتَ وَلِيُّهَا وَمَوْلَاهَا",
      latin: "Allahumma aati nafsii taqwaahaa wa zakkihaa anta khairu man zakkaahaa anta waliyyuhaa wa maulaahaa.",
      translation: "Ya Allah, berikanlah ketakwaan pada jiwaku, dan bersihkanlah ia, Engkaulah sebaik-baik yang membersihkannya, Engkaulah Pelindung dan Pemiliknya."
    ),
    Doa(
      title: "Doa Mohon Perlindungan dari Ilmu yang Tidak Bermanfaat",
      arabic: "اللَّهُمَّ إِنِّي أَعُوذُ بِكَ مِنْ عِلْمٍ لَا يَنْفَعُ وَمِنْ قَلْبٍ لَا يَخْشَعُ وَمِنْ نَفْسٍ لَا تَشْبَعُ",
      latin: "Allahumma innii a'uudzu bika min 'ilmin laa yanfa'u wa min qalbin laa yakhsya'u wa min nafsin laa tasyba'u.",
      translation: "Ya Allah, sesungguhnya aku berlindung kepada-Mu dari ilmu yang tidak bermanfaat, dari hati yang tidak khusyuk, dan dari jiwa yang tidak pernah merasa puas."
    ),
    Doa(
      title: "Doa Masuk Pemakaman (Ziarah Kubur)",
      arabic: "السَّلَامُ عَلَيْكُمْ أَهْلَ الدِّيَارِ مِنَ الْمُؤْمِنِينَ وَالْمُسْلِمِينَ وَإِنَّا إِنْ شَاءَ اللَّهُ بِكُمْ لَاحِقُونَ",
      latin: "Assalaamu 'alaikum ahlad diyaari minal mukminiina wal muslimiina wa innaa in syaa-allaahu bikum laahiquun.",
      translation: "Semoga keselamatan tercurah kepada kalian, wahai penghuni kubur dari kalangan orang-orang mukmin dan muslim, dan sesungguhnya kami, jika Allah menghendaki, akan menyusul kalian."
    ),
    Doa(
      title: "Doa Saat Mendapat Pujian dari Orang Lain",
      arabic: "اللَّهُمَّ لَا تُؤَاخِذْنِي بِمَا يَقُولُونَ وَاغْفِرْ لِي مَا لَا يَعْلَمُونَ وَاجْعَلْنِي خَيْرًا مِمَّا يَظُنُّونَ",
      latin: "Allahumma laa tu-aakhidznii bimaa yaquuluuna waghfir lii maa laa ya'lamuuna waj'alnii khairan mimmaa yazhunnuun.",
      translation: "Ya Allah, janganlah Engkau menghukumku karena apa yang mereka ucapkan, ampunilah aku atas apa yang tidak mereka ketahui, dan jadikanlah aku lebih baik dari apa yang mereka duga."
    ),
    Doa(
      title: "Doa Memohon Kelapangan Dada Menghadapi Cobaan",
      arabic: "رَبَّنَا أَفْرِغْ عَلَيْنَا صَبْرًا وَتَوَفَّنَا مُسْلِمِينَ",
      latin: "Rabbanaa afrigh 'alainaa sabran wa tawaffanaa muslimiin.",
      translation: "Ya Tuhan kami, limpahkanlah kesabaran kepada kami dan wafatkanlah kami dalam keadaan berserah diri (muslim)."
    ),
    // --- TAMBAHAN 20 DOA BARU BERIKUTNYA ---
    Doa(
      title: "Doa Memohon Perlindungan dari 4 Perkara Setelah Tasyahud Akhir",
      arabic: "اللَّهُمَّ إِنِّي أَعُوذُ بِكَ مِنْ عَذَابِ جَهَنَّمَ وَمِن *عَذَابِ الْقَبْرِ وَمِنْ فِتْنَةِ الْمَحْيَا وَالْمَمَاتِ وَمِنْ شَرِّ فِتْنَةِ الْمَسِيحِ الدَّجَّالِ",
      latin: "Allahumma innii a'uudzu bika min 'adzaabi jahannama wa min 'adzaabil qabri wa min fitnatil mahyaa wal mamaati wa min syarri fitnatil masiihid dajjaal.",
      translation: "Ya Allah, sesungguhnya aku berlindung kepada-Mu dari siksa neraka Jahannam, dari siksa kubur, dari fitnah kehidupan dan kematian, serta dari keburukan fitnah Al-Masih Ad-Dajjal."
    ),
    Doa(
      title: "Doa Memohon Kelapangan Hati (Doa Nabi Musa)",
      arabic: "رَبِّ اشْرَحْ لِي صَدْرِي وَيَسِّرْ لِي أَمْرِي وَاحْلُلْ عُقْدَةً مِنْ لِسَانِي يَفْقَهُوا قَوْلِي",
      latin: "Rabbisy rahlia shadrii wa yassir lii amrii wahlul 'uqdatan min lisaanii yafqahuu qawlii.",
      translation: "Ya Tuhanku, lapangkanlah dadaku, mudahkanlah urusanku, dan lepaskanlah kaku dari lidahku agar mereka mengerti perkataanku."
    ),
    Doa(
      title: "Doa Berlindung dari Hilangnya Nikmat dan Kesehatan",
      arabic: "اللَّهُمَّ إِنِّي أَعُوذُ بِكَ مِنْ زَوَالِ نِعْمَتِكَ وَتَحَوُّلِ عَافِيَتِكَ وَفُجَاءَةِ نِقْمَتِكَ وَجَمِيعِ سَخَطِكَ",
      latin: "Allahumma innii a'uudzu bika min zawaali ni'matika wa tahawwuli 'aafiyatika wa fujaa-ati niqmatika wa jamii'i sakhatik.",
      translation: "Ya Allah, sesungguhnya aku berlindung kepada-Mu dari hilangnya nikmat-Mu, berubahnya kesehatan yang Engkau berikan, dampak bencana-Mu yang tiba-tiba, dan segala murka-Mu."
    ),
    Doa(
      title: "Doa Memohon Perlindungan dari Tetangga yang Buruk",
      arabic: "اللَّهُمَّ إِنِّي أَعُوذُ بِكَ مِنْ جَارِ السُّوءِ فِي دَارِ الْمُقَامَةِ",
      latin: "Allahumma innii a'uudzu bika min jaaris suu-i fii daaril muqaamah.",
      translation: "Ya Allah, sesungguhnya aku berlindung kepada-Mu dari tetangga yang buruk di tempat tinggal tetapku."
    ),
    Doa(
      title: "Doa Memohon Kecukupan dan Sifat Qana'ah",
      arabic: "اللَّهُمَّ قَنِّعْنِي بِمَا رَزَقْتَنِي وَبَارِكْ لِي فِيهِ وَاخْلُفْ عَلَى كُلِّ غَائِبَةٍ لِي بِخَيْرٍ",
      latin: "Allahumma qanni'nii bimaa razaqtanii wa baarik lii fiihi wakhluf 'alaa kulli ghaa-ibatin lii bikhair.",
      translation: "Ya Allah, jadikanlah aku qana'ah (merasa cukup) dengan rezeki yang Engkau berikan kepadaku, berkahilah ia, dan gantikanlah setiap apa yang hilang dariku dengan kebaikan."
    ),
    Doa(
      title: "Doa Ketika Memakai Celak",
      arabic: "اللَّهُمَّ نَوِّرْ بَصَرِي وَبَصِيرَتِي وَاجْعَلْ سَرِيرَتِي خَيْرًا مِنْ عَلَانِيَتِي",
      latin: "Allahumma nawwir basharii wa bashiiratii waj'al sariiratii khairan min 'alaaniyatii.",
      translation: "Ya Allah, cahayailah penglihatanku dan mata hatiku, serta jadikanlah batin atau apa yang kurahasiakan lebih baik daripada apa yang kutampakkan."
    ),
    Doa(
      title: "Doa Ketika Turun Angin Kencang",
      arabic: "اللَّهُمَّ إِنِّي أَسْأَلُكَ خَيْرَهَا وَخَيْرَ مَا فِيهَا وَخَيْرَ مَا أُرْسِلَتْ بِهِ",
      latin: "Allahumma innii as-aluka khairahaa wa khaira maa fiihaa wa khaira maa ursilat bih.",
      translation: "Ya Allah, sesungguhnya aku memohon kepada-Mu kebaikan angin ini, kebaikan apa yang ada di dalamnya, dan kebaikan tujuan ia diutus."
    ),
    Doa(
      title: "Doa Berlindung dari Angin Kencang yang Membawa Marabahaya",
      arabic: "وَأَعُوذُ بِكَ مِنْ شَرِّهَا وَشَرِّ مَا فِيهَا وَشَرِّ مَا أُرْسِلَت *بِهِ",
      latin: "Wa a'uudzu bika min syarrihaa wa syarri maa fiihaa wa syarri maa ursilat bih.",
      translation: "Dan aku berlindung kepada-Mu dari keburukan angin ini, keburukan apa yang ada di dalamnya, dan keburukan tujuan ia diutus."
    ),
    Doa(
      title: "Doa Ketika Mengagumi Keindahan Alam",
      arabic: "رَبَّنَا مَا خَلَقْتَ هَذَا بَاطِلًا سُبْحَانَكَ فَقِنَا عَذَابَ النَّارِ",
      latin: "Rabbanaa maa khalaqta hadzaa baathilaa, subhaanaka faqinaa 'adzaaban naar.",
      translation: "Ya Tuhan kami, tidaklah Engkau menciptakan semua ini sia-sia; Maha Suci Engkau, maka lindungilah kami dari azab neraka."
    ),
    Doa(
      title: "Doa Memohon Sifat Istiqomah dan Khusnul Khotimah",
      arabic: "اللَّهُمَّ إِنِّي أَسْأَلُكَ الثَّبَاتَ فِي الْأَمْرِ وَالْعَزِيمَةَ عَلَى الرُّشْدِ",
      latin: "Allahumma innii as-alukat tsabaata fil amri wal 'aziimata 'alar rusyd.",
      translation: "Ya Allah, sesungguhnya aku memohon kepada-Mu keteguhan dalam segala urusan, dan keinginan yang kuat menuju kebenaran."
    ),
    Doa(
      title: "Doa Memohon Dijauhkan dari Pemimpin yang Zalim",
      arabic: "اللَّهُمَّ لَا تُسَلِّطْ عَلَيْنَا بِذُنُوبِنَا مَنْ لَا يَخَافُكَ فِينَا وَلَا يَرْحَمُنَا",
      latin: "Allahumma laa tusallith 'alainaa bidzunuubinaa man laa yakhaafuka fiinaa wa laa yarhamunaa.",
      translation: "Ya Allah, janganlah Engkau kuasakan atas kami—karena dosa-dosa kami—pemimpin yang tidak takut kepada-Mu dan tidak telaten menyayangi kami."
    ),
    Doa(
      title: "Doa Berlindung dari Sifat Malas dalam Beribadah",
      arabic: "اللَّهُمَّ أَعِنِّي عَلَى ذِكْرِكَ وَشُكْرِكَ وَحُسْنِ عِبَادَتِكَ",
      latin: "Allahumma a'innii 'alaa dzikrika wa syukrika wa husni 'ibaadatik.",
      translation: "Ya Allah, bantulah aku untuk selalu mengingat-Mu, bersyukur kepada-Mu, dan memperbaiki ibadahku kepada-Mu."
    ),
    Doa(
      title: "Doa Menghilangkan Pikiran Buruk (Waspada Was-was Syetan)",
      arabic: "اللَّهُمَّ اجْعَلْ هَمِّي الْآخِرَةَ وَلَا تَجْعَلْ هَمِّي الدُّنْيَا",
      latin: "Allahummaj 'al hammii aakhirata wa laa taj'al hammiid dunyaa.",
      translation: "Ya Allah, jadikanlah akhirat sebagai fokus utama tujuanku, dan jangan jadikan dunia sebagai puncak ambisiku."
    ),
    Doa(
      title: "Doa Masuk Tempat Kerja / Kantor",
      arabic: "رَبِّ أَدْخِلْنِي مُدْخَلَ صِدْقٍ وَأَخْرِجْنِي مُخْرَجَ صِدْقٍ وَاجْعَلْ لِي مِنْ لَدُنْكَ سُلْطَانًا نَصِيرًا",
      latin: "Rabbi adkhilnii mudkhala sidqin wa akhrijnii mukhraja sidqin waj'al lii mil ladunka sulthaanan nashiiraa.",
      translation: "Ya Tuhanku, masukkanlah aku secara masuk yang benar dan keluarkanlah aku secara keluar yang benar, dan berikanlah kepadaku dari sisi-Mu kekuasaan yang menolong."
    ),
    Doa(
      title: "Doa Memohon Perlindungan Saat Terjadi Gempa Bumi",
      arabic: "اللَّهُمَّ إِنِّي أَسْأَلُكَ خَيْرَهَا وَأَعُوذُ بِكَ مِنْ شَرِّهَا",
      latin: "Allahumma innii as-aluka khairahaa wa a'uudzu bika min syarrihaa.",
      translation: "Ya Allah, sesungguhnya aku memohon kebaikan dari apa yang terjadi ini, dan aku berlindung kepada-Mu dari keburukannya."
    ),
    Doa(
      title: "Doa Ketika Menyembelih Hewan Qurban",
      arabic: "بِسْمِ اللَّهِ وَاللَّهُ أَكْبَرُ اللَّهُمَّ هَذَا مِنْكَ وَإِلَيْكَ",
      latin: "Bismillaahi wallaahu akbar, allahumma hadzaa minka wa ilaik.",
      translation: "Dengan nama Allah dan Allah Maha Besar. Ya Allah, (hewan qurban) ini berasal dari-Mu dan dipersembahkan kembali untuk-Mu."
    ),
    Doa(
      title: "Doa Memohon Umur Berkah Ditutup Kebahagiaan",
      arabic: "اللَّهُمَّ اجْعَلْ حَيَاتِي زِيَادَةً لِي فِي كُلِّ خَيْرٍ وَاجْعَلِ الْمَوْتَ رَاحَةً لِي مِنْ كُلِّ شَرٍّ",
      latin: "Allahummaj 'al hayaatii ziyaadatan lii fii kulli khairin waj'alil mauta raahatan lii min kulli syarr.",
      translation: "Ya Allah, jadikanlah hidupku ini penambah segala kebaikan bagiku, dan jadikanlah kematianku kelak sebagai peristirahatan dari segala keburukan."
    ),
    Doa(
      title: "Doa Ketika Mendengar Berita Kematian Seseorang",
      arabic: "إِنَّا لِلَّهِ وَإِنَّا إِلَيْهِ رَاجِعُونَ وَإِنَّا إِلَى رَبِّنَا لَمُنْقَلِبُونَ",
      latin: "Innaa lillaahi wa innaa ilaihi raaji'uuna wa innaa ilaa rabbinaa lamunqalibuun.",
      translation: "Sesungguhnya kita adalah milik Allah dan kepada-Nya kita kembali, dan sesungguhnya kita semua pasti akan kembali menghadap Tuhan kita."
    ),
    Doa(
      title: "Doa Memohon Perlindungan dari Hati yang Tidak Khusyuk",
      arabic: "اللَّهُمَّ إِنِّي أَعُوذُ بِكَ مِنْ قَلْبٍ لَا يَخْشَعُ وَمِنْ دُعَاءٍ لَا يُسْمَعُ",
      latin: "Allahumma innii a'uudzu bika min qalbin laa yakhsya'u wa min du'aa-in laa yusma'.",
      translation: "Ya Allah, sesungguhnya aku berlindung kepada-Mu dari hati yang tidak khusyuk dan dari doa yang tidak didengar (tidak dikabulkan)."
    ),
    Doa(
      title: "Doa Ketika Meminum Air Zam-Zam",
      arabic: "اللَّهُمَّ إِنِّي أَسْأَلُكَ عِلْمًا نَافِعًا وَرِزْقًا وَاسِعًا وَشِفَاءً مِنْ كُلِّ دَاءٍ",
      latin: "Allahumma innii as-aluka 'ilman naafi'an wa rizqan waasi'an wa syifaa-an min kulli daa-in.",
      translation: "Ya Allah, sesungguhnya aku memohon kepada-Mu ilmu yang bermanfaat, rezeki yang luas, dan kesembuhan dari segala macam penyakit."
    ),
  ];
}