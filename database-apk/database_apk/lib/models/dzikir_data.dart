// lib/models/dzikir_data.dart

class DzikirItem {
  final String arab;
  final String latin;
  final String arti;
  final String faedah;
  final int targetSajak;

  const DzikirItem({
    required this.arab,
    required this.latin,
    required this.arti,
    required this.faedah,
    required this.targetSajak,
  });
}

class DzikirData {
  // =========================================================================
  // KOLEKSI DATA DZIKIR PAGI FULL (1 - 18 BACAAN)
  // =========================================================================
  static const List<DzikirItem> pagiFull = [
    // [1] Ayat Kursi
    DzikirItem(
      arab:
          "أَعُوذُ بِاللَّهِ مِنَ الشَّيْطَانِ الرَّجِيمِ\n\nٱللَّهُ لَآ إِلَٰهَ إِلَّا هُوَ ٱلْحَىُّ ٱلْقَيُّومُ ۚ لَا تَأْخُذُهُۥ سِنَةٌ وَلَا نَوْمٌ ۚ لَّهُۥ مَا فِى ٱالسَّمَٰوَٰتِ وَمَا فِى ٱلْأَرْضِ ۗ ن ذَا ٱلَّذِى يَشْفَعُ عِندَهُۥٓ إِلَّا بِإِذْنِهِۦ ۚ يَعْلَمُ مَا بَيْنَ أَيْدِيهِمْ وَمَا خَلْفَهُمْ ۖ وَلَا يُحِيطُونَ بِشَىْءٍ مِّنْ عِلْمِهِۦٓ إِلَّا بِإِذْنِهِۦ ۚ وَسِعَ كُرْسِيُّهُ ٱالسَّمَٰوَٰتِ وَٱلْأَرْضَ ۖ وَلَا يَـُٔودُهُۥ حِفْظُهُمَا ۚ وَهُوَ ٱلْعَلِىُّ ٱلْعَظِيمُ",
      latin:
          "Alloahu laa ilaaha illa Huwal Hayyul Qoyyuum, laa ta’khudzuhu sinatun walaa naum. Lahuu maa fis samaawaati wa maa fil ardh. Man dzal ladzii yasyfa’u ‘indahuu illa bi idznih. Ya’lamu maa bayna aydiihim wa maa kholfahum. Wa laa yuhiithuuna bi syai-im min ‘ilmihii illa bi maa syaa-a. Wasi’a kursiyyuhus samaawaati wal ardh, wa laa ya-uuduhuu hifzhuhumaa, wa Huwal ‘Aliyyul ‘Azhiim.",
      arti:
          "“Allah, tidak ada ilah (yang berhak disembah) melainkan Dia, yang hidup kekal lagi terus menerus mengurus (makhluk-Nya). Dia tidak mengantuk dan tidak tidur. Kepunyaan-Nya apa yang di langit dan di bumi. Tiada yang dapat memberi syafa’at di sisi-Nya tanpa seizin-Nya. Dia mengetahui apa-apa yang di hadapan mereka dan di belakang mereka. Mereka tidak mengetahui apa-apa dari ilmu Allah melainkan apa yang dikehendaki-Nya. Kursi Allah meliputi langit dan bumi. Dia tidak merasa berat memelihara keduanya. Dan Dia Maha Tinggi lagi Maha besar.” (QS. Al Baqarah: 255)",
      faedah:
          "Siapa yang membacanya ketika petang, maka ia akan dilindungi (oleh Allah dari berbagai gangguan) hingga pagi. Siapa yang membacanya ketika pagi, maka ia akan dilindungi hingga petang.",
      targetSajak: 1,
    ),

    // [2.1] Al-Ikhlas
    DzikirItem(
      arab:
          "بِسْمِ اللّٰهِ الرَّحْمٰنِ الرَّحِيْمِ\n\nقُلْ هُوَ اللّٰهُ أَحَدٌ ۝١ اللّٰهُ الصَّمَدُ ۝٢ لَمْ يَلِدْ وَلَمْ يُوْلَدْ ۝٣ وَلَمْ يَكُنْ لَّهُ كُفُوًا أَحَدٌ ۝٤",
      latin:
          "Bismillahir rohmanir rohiim. Qul huwallahu ahad. Allahush shomad. Lam yalid walam yuulad. Walam yakul lahuu kufuwan ahad.",
      arti:
          "“Dengan menyebut nama Allah Yang Maha Pengasih lagi Maha Penyayang. Katakanlah: Dialah Allah, Yang Maha Esa. Allah adalah ilah yang bergantung kepada-Nya segala urusan. Dia tidak beranak dan tiada pula diperanakkan, dan tidak ada seorang pun yang setara dengan Dia.” (QS. Al Ikhlas: 1-4)",
      faedah:
          "Siapa yang mengucapkannya masing-masing tiga kali ketika pagi dan petang, maka segala sesuatu akan dicukupkan untuknya.",
      targetSajak: 3,
    ),

    // [2.2] Al-Falaq
    DzikirItem(
      arab:
          "بِسْمِ اللّٰهِ الرَّحْمٰنِ الرَّحِيْمِ\n\nقُلْ أَعُوْذُ بِرَبِّ الْفَلَقِ ۝١ مِنْ شَرِّ مَا خَلَقَ ۝٢ وَمِنْ شَرِّ غَاسِقٍ إِذَا وَقَبَ ۝٣ وَمِنْ شَرِّ النَّفّٰثٰتِ فِي الْعُقَدِ ۝٤ وَمِنْ شَرِّ حَاسِدٍ إِذَا حَسَدَ ۝٥",
      latin:
          "Bismillahir rohmanir rohiim. Qul a’uudzu bi robbil falaq. Min syarri maa kholaq. Wa min syarri ghoosiqin idzaa waqob. Wa min syarri naffaatsaati fil ‘uqod. Wa min syarri haasidin idzaa hasad.",
      arti:
          "“Dengan menyebut nama Allah Yang Maha Pengasih lagi Maha Penyayang. Katakanlah: Aku berlindung kepada Rabb yang menguasai subuh, dari kejahatan makhluk-Nya, dan dari kejahatan malam apabila telah gelap gulita, dan dari kejahatan wanita tukang sihir yang menghembus pada buhul-buhul, dan dari kejahatan orang yang dengki apabila ia dengki.” (QS. Al Falaq: 1-5)",
      faedah:
          "Siapa yang mengucapkannya masing-masing tiga kali ketika pagi dan petang, maka segala sesuatu akan dicukupkan untuknya.",
      targetSajak: 3,
    ),

    // [2.3] An-Naas
    DzikirItem(
      arab:
          "بِسْمِ اللّٰهِ الرَّحْمٰنِ الرَّحِيْمِ\n\nقُلْ أَعُوْذُ بِرَبِّ النَّاسِ ۝١ مَلِكِ النَّاسِ ۝٢ إِلٰهِ النَّاسِ ۝٣ مِنْ شَرِّ الْوَسْوَاسِ الْخَنَّاسِ ۝٤ الَّذِي يُوَسْوِسُ فِي صُدُوْرِ النَّاسِ ۝٥ مِنَ الْجِنَّةِ وَالنَّاسِ ۝٦",
      latin:
          "Bismillahir rohmanir rohiim. Qul a’uudzu bi robbin naas. Malikin naas. Ilaahin naas. Min syarril waswaasil khonnaas. Alladzii yuwaswisu fii shuduurin naas. Minal jinnati wan naas.",
      arti:
          "“Dengan menyebut nama Allah Yang Maha Pengasih lagi Maha Penyayang. Katakanlah: Aku berlindung kepada Rabb manusia. Raja manusia. Sembahan manusia, dari kejahatan (bisikan) syaitan yang bersembunyi, yang membisikkan ke dalam dada manusia, dari golongan jin dan manusia.” (QS. An Naas: 1-6)",
      faedah:
          "Siapa yang mengucapkannya masing-masing tiga kali ketika pagi dan petang, maka segala sesuatu akan dicukupkan untuknya.",
      targetSajak: 3,
    ),

    // [3] Ash-bahna wa ash-bahal mulku lillah
    DzikirItem(
      arab:
          "أَصْبَحْنَا وَأَصْبَحَ الْمُلْكُ لِلَّهِ، وَالْحَمْدُ لِلَّهِ، لاَ إِلَـهَ إِلاَّ اللهُ وَحْدَهُ لاَ شَرِيْكَ لَهُ، لَهُ الْمُلْكُ وَلَهُ الْحَمْدُ وَهُوَ عَلَى كُلِّ شَيْءٍ قَدِيْرُ. رَبِّ أَسْأَلُكَ خَيْرَ مَا فِيْ هَذَا الْيَوْمِ وَخَيْرَ مَا بَعْدَهُ، وَأَعُوْذُ بِكَ مِنْ شَرِّ مَا فِيْ هَذَا الْيَوْمِ وَشَرِّ مَا بَعْدَهُ، رَبِّ أَعُوْذُ بِكَ مِنَ الْكَسَلِ وَسُوْءِ الْكِبَرِ، رَبِّ أَعُوْذُ بِكَ مِنْ عَذَابٍ فِي النَّارِ وَعَذَابٍ فِي الْقَبْرِ",
      latin:
          "Ash-bahnaa wa ash-bahal mulku lillah walhamdulillah, laa ilaha illallah wahdahu laa syarika lah, lahul mulku walahul hamdu wa huwa ‘ala kulli syai-in qodir. Robbi as-aluka khoiro maa fii hadzal yaum wa khoiro maa ba’dahu, wa a’udzu bika min syarri maa fii hadzal yaum wa syarri maa ba’dahu. Robbi a’udzu bika minal kasali wa su-il kibar. Robbi a’udzu bika min ‘adzabin fin naari wa ‘adzabin fil qobri.",
      arti:
          "“Kami telah memasuki waktu pagi dan kerajaan hanya milik Allah, segala puji bagi Allah. Tidak ada ilah (yang berhak disembah) kecuali Allah semata, tiada sekutu bagi-Nya. Milik Allah kerajaan dan bagi-Nya pujian. Dia-lah Yang Mahakuasa atas segala sesuatu. Wahai Rabbku, aku mohon kepada-Mu kebaikan di hari ini dan kebaikan sesudahnya. Aku berlindung kepada-Mu dari kejahatan hari ini dan kejahatan sesudahnya. Wahai Rabbku, aku berlindung kepada-Mu dari kemalasan dan kejelekan di hari tua. Wahai Rabbku, aku berlindung kepada-Mu dari siksaan di neraka dan siksaan di alam kubur.”",
      faedah:
          "Meminta pada Allah kebaikan di hari ini dan kebaikan sesudahnya, juga agar terhindar dari kejelekan di hari ini dan kejelekan sesudahnya. Di dalamnya berisi pula permintaan agar terhindar dari rasa malas padahal mampu untuk beramal, juga agar terhindar dari kejelekan di masa tua. Di dalamnya juga berisi permintaan agar terselamatkan dari siksa kubur dan siksa neraka yang merupakan siksa terberat di hari kiamat kelak.",
      targetSajak: 1,
    ),

    // [4] Allahumma bika ash-bahnaa
    DzikirItem(
      arab:
          "اَللَّهُمَّ بِكَ أَصْبَحْنَا، وَبِكَ أَمْسَيْنَا، وَبِكَ نَحْيَا، وَبِكَ نَمُوْتُ وَإِلَيْكَ النُ​​شُوْرُ",
      latin:
          "Allahumma bika ash-bahnaa wa bika amsaynaa wa bika nahyaa wa bika namuutu wa ilaikan nusyuur.",
      arti:
          "“Ya Allah, dengan rahmat dan pertolongan-Mu kami memasuki waktu pagi, dan dengan rahmat dan pertolongan-Mu kami memasuki waktu petang. Dengan rahmat dan pertolongan-Mu kami hidup dan dengan kehendak-Mu kami mati. Dan kepada-Mu kebangkitan (bagi semua makhluk).”",
      faedah:
          "Zikir sunnah di pagi hari sebagai bentuk kesyukuran atas kehidupan baru yang Allah berikan.",
      targetSajak: 1,
    ),

    // [5] Sayyidul Istighfar
    DzikirItem(
      arab:
          "اَللَّهُمَّ أَنْتَ رَبِّيْ لاَ إِلَـهَ إِلاَّ أَنْتَ، خَلَقْتَنِيْ وَأَنَا عَبْدُكَ، وَأَنَا عَلَى عَهْدِكَ وَوَعْدِكَ مَا اسْتَطعتُ، أَعُوْذُ بِكَ مِنْ شَرِّ مَا صَنَعْتُ، أَبُوْءُ لَكَ بِنِعْمَتِكَ عَلَيَّ، وَأَبُوْءُ بِذَنْبِيْ فَاغْفِرْ لِيْ فَإِنَّهُ لاَ يَغْفِرُ الذُّنُوْبَ إِلاَّ أَنْتَ.",
      latin:
          "Allahumma anta robbii laa ilaha illa anta, kholaqtanii wa anaa ‘abduka wa anaa ‘ala ‘ahdika wa wa’dika mas-tatho’tu. A’udzu bika min syarri maa shona’tu. Abu-u laka bi ni’matika ‘alayya wa abu-u bi dzambii. Fagh-firlii fainnahu laa yagh-firudz dzunuuba illa anta.",
      arti:
          "“Ya Allah, Engkau adalah Rabbku, tidak ada ilah yang berhak disembah kecuali Engkau, Engkaulah yang menciptakanku. Aku adalah hamba-Mu. Aku akan setia pada perjanjianku pada-Mu (yaitu aku akan mentauhidkan-Mu) semampuku dan aku yakin akan janji-Mu (berupa surga untukku). Aku berlindung kepada-Mu dari kejelekan yang kuperbuat. Aku mengakui nikmat-Mu kepadaku dan aku mengakui dosaku. Oleh karena itu, ampunilah aku. Sesungguhnya tiada yang mengampuni dosa kecuali Engkau.”",
      faedah:
          "Barangsiapa mengucapkan dzikir ini di siang hari dalam keadaan penuh keyakinan, lalu ia mati pada hari tersebut sebelum petang hari, maka ia termasuk penghuni surga. Barangsiapa yang mengucapkannya di malam hari dalam keadaan penuh keyakinan, lalu ia mati sebelum pagi, maka ia termasuk penghuni surga.",
      targetSajak: 1,
    ),

    // [6] Allahumma inni ash-bahtu usy-hiduka
    DzikirItem(
      arab:
          "اَللَّهُمَّ إِنِّيْ أَصْبَحْتُ أُشْهِدُكَ وَأُشْهِدُ حَمَلَةَ عَرْشِكَ، وَمَلاَئِكَتَكَ وَجَمِيْعَ خَلْقِكَ، أَنَّكَ أَنْتَ اللهُ لاَ إِلَـهَ إِلاَّ أَنْتَ وَحْدَكَ لاَ شَرِيْكَ لَكَ، وَأَنَّ مُحَمَّدًا عَبْدُكَ وَرَسُوْلُكَ",
      latin:
          "Allahumma inni ash-bahtu usy-hiduka wa usy-hidu hamalata ‘arsyika wa malaa-ikatak wa jami’a kholqik, annaka antallahu laa ilaha illa anta wahdaka laa syariika lak, wa anna Muhammadan ‘abduka wa rosuuluk.",
      arti:
          "“Ya Allah, sesungguhnya aku di waktu pagi ini mempersaksikan Engkau, malaikat yang memikul ‘Arys-Mu, malaikat-mataikat dan seluruh makhluk-Mu, bahwa sesungguhnya Engkau adalah Allah, tiada ilah yang berhak disembah kecuali Engkau semata, tiada sekutu bagi-Mu dan sesungguhnya Muhammad adalah hamba dan utusan-Mu.”",
      faedah:
          "Barangsiapa yang mengucapkan dzikir ini ketika pagi dan petang hari sebanyak empat kali, maka Allah akan membebaskan dirinya dari siksa neraka.",
      targetSajak: 4,
    ),

    // [7] Allahumma innii as-alukal ‘afwa wal ‘aafiyah
    DzikirItem(
      arab:
          "اَللَّهُمَّ إِنِّيْ أَسْأَلُكَ الْعَفْوَ وَالْعَافِيَةَ فِي الدُّنْيَا وَاْلآخِرَةِ، اَللَّهُمَّ إِنِّيْ أَسْأَلُكَ الْعَفْوَ وَالْعَافِيَةَ فِي دِيْنِيْ وَدُنْيَايَ وَأَهْلِيْ وَمَالِيْ اللَّهُمَّ اسْتُرْ عَوْرَاتِى وَآمِنْ رَوْعَاتِى. اَللَّهُمَّ احْفَظْنِيْ مِنْ بَيْنِ يَدَيَّ، وَمِنْ خَلْفِيْ، وَعَنْ يَمِيْنِيْ وَعَنْ شِمَالِيْ، وَمِنْ فَوْقِيْ، وَأَعُوْذُ بِعَظَمَتِكَ أَنْ أُغْتَالَ مِنْ تَحْتِيْ",
      latin:
          "Allahumma innii as-alukal ‘afwa wal ‘aafiyah fid dunyaa wal aakhiroh. Allahumma innii as-alukal ‘afwa wal ‘aafiyah fii diinii wa dun-yaya wa ahlii wa maalii. Allahumas-tur ‘awrootii wa aamin row’aatii. Allahummahfazh-nii mim bayni yadayya wa min kholfii wa ‘an yamiinii wa ‘an syimaalii wa min fawqii wa a’udzu bi ‘azhomatik an ughtala min tahtii.",
      arti:
          "“Ya Allah, sesungguhnya aku memohon kebajikan dan keselamatan di dunia dan akhirat. Ya Allah, sesungguhnya aku memohon kebajikan dan keselamatan dalam agama, dunia, keluarga dan hartaku. Ya Allah, tutupilah auratku (aib dan sesuatu yang tidak layak dilihat orang) dan tenteramkanlah aku dari rasa takut. Ya Allah, peliharalah aku dari muka, belakang, kanan, kiri dan atasku. Aku berlindung dengan kebesaran-Mu, agar aku tidak disambar dari bawahku (oleh ular atau tenggelam dalam bumi dan lain-lain yang membuat aku jatuh).”",
      faedah:
          "Rasulullah shallallahu ‘alaihi wa sallam tidaklah pernah meninggalkan do’a ini di pagi dan petang hari. Di dalamnya berisi perlindungan dan keselamatan pada agama, dunia, keluarga dan harta dari berbagai macam gangguan yang datang dari berbagai arah.",
      targetSajak: 1,
    ),

    // [8] Allahumma ‘aalimal ghoybi wasy syahaadah
    DzikirItem(
      arab:
          "اَللَّهُمَّ عَالِمَ الْغَيْبِ وَالشَّهَادَةِ فَاطِرَ السَّمَاوَاتِ وَاْلأَرْضِ، رَبَّ كُلِّ شَيْءٍ وَمَلِيْكَهُ، أَشْهَدُ أَنْ لاَ إِلَـهَ إِلاَّ أَنْتَ، أَعُوْذُ بِكَ مِنْ شَرِّ نَفْسِيْ، وَمِنْ شَرِّ الشَّيْطَانِ وَشِرْكِهِ، وَأَنْ أَقْتَرِفَ عَلَى نَفْسِيْ سُوْءًا أَوْ أَجُرَّهُ إِلَى مُسْلِمٍ",
      latin:
          "Allahumma ‘aalimal ghoybi wasy syahaadah faathiros samaawaati wal ardh. Robba kulli syai-in wa maliikah. Asyhadu alla ilaha illa anta. A’udzu bika min syarri nafsii wa min syarrisy syaythooni wa syirkihi, wa an aqtarifa ‘alaa nafsii suu-an aw ajurrohu ilaa muslim.",
      arti:
          "“Ya Allah, Yang Maha Mengetahui yang ghaib dan yang nyata, wahai Rabb pencipta langit dan bumi, Rabb segala sesuatu dan yang merajainya. Aku bersaksi bahwa tidak ada ilah yang berhak disembah kecuali Engkau. Aku berlindung kepadaMu dari kejahatan diriku, setan dan balatentaranya (godaan untuk berbuat syirik pada Allah), dan aku (berlindung kepada-Mu) dari berbuat kejelekan terhadap diriku atau menyeretnya kepada seorang muslim.”",
      faedah:
          "Do’a ini diajarkan oleh Rasulullah shallallahu ‘alaihi wa sallam pada Abu Bakr Ash Shiddiq radhiyallahu ‘anhu untuk dibaca pada pagi, petang dan saat beranjak tidur.",
      targetSajak: 1,
    ),

    // [9] Bismillahilladzi laa yadhurru
    DzikirItem(
      arab:
          "بِسْمِ اللَّهِ الَّذِى لاَ يَضُرُّ مَعَ اسْمِهِ شَىْءٌ فِى الأَرْضِ وَلاَ فِى السَّمَاءِ وَهُوَ السَّمِيعُ الْعَلِيمُ",
      latin:
          "Bismillahilladzi laa yadhurru ma’asmihi syai-un fil ardhi wa laa fis samaa’ wa huwas samii’ul ‘aliim.",
      arti:
          "“Dengan nama Allah yang bila disebut, segala sesuatu di bumi dan langit tidak akan berbahaya, Dia-lah Yang Maha Mendengar lagi Maha Mengetahui.”",
      faedah:
          "Barangsiapa yang mengucapkan dzikir tersebut sebanyak tiga kali di pagi hari dan tiga kali di petang hari, maka tidak akan ada bahaya yang tiba-tiba memudaratkannya.",
      targetSajak: 3,
    ),

    // [10] Rodhiitu billaahi robbaa
    DzikirItem(
      arab:
          "رَضِيْتُ بِاللهِ رَبًّا، وَبِاْلإِسْلاَمِ دِيْنًا، وَبِمُحَمَّدٍ صَلَّى اللهُ عَلَيْهِ وَسَلَّمَ نَبِيًّا",
      latin:
          "Rodhiitu billaahi robbaa wa bil-islaami diinaa, wa bi-muhammadin shallallaahu ‘alaihi wa sallama nabiyya.",
      arti:
          "“Aku ridha Allah sebagai Rabb, Islam sebagai agama dan Muhammad shallallahu ‘alaihi wa sallam sebagai nabi.”",
      faedah:
          "Barangsiapa yang mengucapkan dzikir ini sebanyak tiga kali di pagi hari dan tiga kali di petang hari, maka pantas baginya mendapatkan ridha Allah.",
      targetSajak: 3,
    ),

    // [11] Yaa Hayyu Yaa Qoyyum
    DzikirItem(
      arab:
          "يَا حَيُّ يَا قَيُّوْمُ بِرَحْمَتِكَ أَسْتَغِيْثُ، وَأَصْلِحْ لِيْ شَأْنِيْ كُلَّهُ وَلاَ تَكِلْنِيْ إِلَى نَفْسِيْ طَرْفَةَ عَيْنٍ أَبَدًا",
      latin:
          "Yaa Hayyu Yaa Qoyyum, bi-rohmatika as-taghiits, wa ash-lih lii sya’nii kullahu wa laa takilnii ilaa nafsii thorfata ‘ainin Abadan.",
      arti:
          "“Wahai Rabb Yang Maha Hidup, wahai Rabb Yang Berdiri Sendiri (tidak butuh segala sesuatu), dengan rahmat-Mu aku minta pertolongan, perbaikilah segala urusanku dan jangan diserahkan kepadaku sekali pun sekejap mata (tanpa mendapat pertolongan dariMu).”",
      faedah:
          "Dzikir ini diajarkan oleh Nabi shallallahu ‘alaihi wa sallam pada Fathimah supaya diamalkan pagi dan petang.",
      targetSajak: 1,
    ),

    // [12] Ash-bahnaa ‘ala fithrotil islaam
    DzikirItem(
      arab:
          "أَصْبَحْنَا عَلَى فِطْرَةِ اْلإِسْلاَمِ وَعَلَى كَلِمَةِ اْلإِخْلاَصِ، وَعَلَى دِيْنِ نَبِيِّنَا مُحَمَّدٍ صَلَّى اللهُ عَلَيْهِ وَسَلَّمَ، وَعَلَى مِلَّةِ أَبِيْنَا إِبْرَاهِيْمَ، حَنِيْفًا وَمَا كَانَ مِنَ الْمُشْرِكِيْنَ",
      latin:
          "Ash-bahnaa ‘ala fithrotil islaam wa ‘alaa kalimatil ikhlaash, wa ‘alaa diini nabiyyinaa Muhammadin shallallahu ‘alaihi wa sallam, wa ‘alaa millati abiina Ibraahiima haniifam muslimaaw wa maa kaana minal musyrikin",
      arti:
          "“Di waktu pagi kami memegang agama Islam, kalimat ikhlas (kalimat syahadat), agama Nabi kami Muhammad shallallahu ‘alaihi wa sallam, dan agama bapak kami Ibrahim, yang berdiri di atas jalan yang lurus, muslim dan tidak tergolong orang-orang musyrik.”",
      faedah:
          "Ikrar keteguhan memeluk fitrah agama Islam dan tauhid murni di pagi hari (Dibaca di pagi hari saja).",
      targetSajak: 1,
    ),

    // [13] Subhanallah wa bi-hamdih
    DzikirItem(
      arab: "سُبْحَانَ اللهِ وَبِحَمْدِهِ",
      latin: "Subhanallah wa bi-hamdih.",
      arti: "“Maha suci Allah, aku memuji-Nya.”",
      faedah:
          "Barangsiapa yang mengucapkan kalimat ‘subhanallah wa bi hamdih’ di pagi dan petang hari sebanyak 100 x, maka tidak ada yang datang pada hari kiamat yang lebih baik dari yang ia lakukan kecuali orang yang mengucapkan semisal atau lebih dari itu.",
      targetSajak: 100,
    ),

    // [14] Laa ilaha illallah (10x)
    DzikirItem(
      arab:
          "لاَ إِلَـهَ إِلاَّ اللهُ وَحْدَهُ لاَ شَرِيْكَ لَهُ، لَهُ الْمُلْكُ وَلَهُ الْحَمْدُ وَهُوَ عَلَى كُلِّ شَيْءٍ قَدِيْرُ",
      latin:
          "Laa ilaha illallah wahdahu laa syarika lah, lahul mulku walahul hamdu wa huwa ‘ala kulli syai-in qodiir.",
      arti:
          "“Tidak ada ilah yang berhak disembah selain Allah semata, tidak ada sekutu bagiNya. Bagi-Nya kerajaan dan segala pujian. Dia-lah yang berkuasa atas segala sesuatu.”",
      faedah:
          "Barangsiapa yang membaca dzikir tersebut di pagi hari sebanyak sepuluh kali, Allah akan mencatatkan baginya 10 kebaikan, menghapuskan baginya 10 kesalahan, ia juga mendapatkan kebaikan semisal memerdekakan 10 budak, Allah akan melindunginya dari gangguan setan hingga petang hari.",
      targetSajak: 10,
    ),

    // [15] Laa ilaha illallah (100x)
    DzikirItem(
      arab:
          "لاَ إِلَـهَ إِلاَّ اللهُ وَحْدَهُ لاَ شَرِيْكَ لَهُ، لَهُ الْمُلْكُ وَلَهُ الْحَمْدُ وَهُوَ عَلَى كُلِّ شَيْءٍ قَدِيْرُ",
      latin:
          "Laa ilaha illallah wahdahu laa syarika lah, lahul mulku walahul hamdu wa huwa ‘ala kulli syai-in qodiir.",
      arti:
          "“Tidak ada ilah yang berhak disembah selain Allah semata, tidak ada sekutu bagi-Nya. Milik Allah kerajaan dan segala pujian. Dia-lah yang berkuasa atas segala sesuatu.”",
      faedah:
          "Barangsiapa yang mengucapkan dzikir tersebut dalam sehari sebanyak 100 x, maka itu seperti membebaskan 10 orang budak, dicatat baginya 100 kebaikan, dihapus baginya 100 kesalahan, dirinya akan terjaga dari gangguan setan dari pagi hingga petang hari.",
      targetSajak: 100,
    ),

    // [16] Subhanallah wa bi-hamdih 'adada kholqih
    DzikirItem(
      arab:
          "سُبْحَانَ اللهِ وَبِحَمْدِهِ: عَدَدَ خَلْقِهِ، وَرِضَا نَفْسِهِ، وَزِنَةَ عَرْشِهِ وَمِدَادَ كَلِمَاتِهِ",
      latin:
          "Subhanallah wa bi-hamdih, ‘adada kholqih wa ridhoo nafsih. wa zinata ‘arsyih, wa midaada kalimaatih.",
      arti:
          "“Maha Suci Allah, aku memujiNya sebanyak makhluk-Nya, sejauh kerelaan-Nya, seberat timbangan ‘Arsy-Nya dan sebanyak tinta tulisan kalimat-Nya.”",
      faedah:
          "Nabi shallallahu ‘alaihi wa sallam mengatakan pada Juwairiyah bahwa dzikir di atas telah mengalahkan dzikir yang dibaca oleh Juwairiyah dari selepas Shubuh sampai waktu Dhuha (Dibaca di waktu pagi saja).",
      targetSajak: 3,
    ),

    // [17] Allahumma innii as-aluka ‘ilman naafi’a
    DzikirItem(
      arab:
          "اَللَّهُمَّ إِنِّيْ أَسْأَلُكَ عِلْمًا نَافِعًا، وَرِزْقًا طَيِّبًا، وَعَمَلاً مُتَقَبَّلاً",
      latin:
          "Allahumma innii as-aluka ‘ilman naafi’a, wa rizqon thoyyibaa, wa ‘amalan mutaqobbalaa.",
      arti:
          "“Ya Allah, sungguh aku memohon kepada-Mu ilmu yang bermanfaat (bagi diriku dan orang lain), rizki yang halal dan amal yang diterima (di sisi-Mu dan mendapatkan ganjaran yang baik).”",
      faedah:
          "Doa memohon tiga hal esensial kehidupan utama yang rutin dibaca pasca-salam shalat Shubuh.",
      targetSajak: 1,
    ),

    // [18] Astagh-firullah wa atuubu ilaih
    DzikirItem(
      arab: "أَسْتَغْفِرُ اللهَ وَأَتُوْبُ إِلَيْهِ",
      latin: "Astagh-firullah wa atuubu ilaih.",
      arti: "“Aku memohon ampun kepada Allah dan bertobat kepada-Nya.”",
      faedah:
          "Mengikuti pembiasaan taubat harian Rasulullah shallallahu 'alaihi wa sallam sebanyak 100 kali dalam sehari.",
      targetSajak: 100,
    ),
  ];

  // =========================================================================
  // KOLEKSI DATA DZIKIR PETANG FULL (1 - 14 BACAAN)
  // =========================================================================
  static const List<DzikirItem> petangFull = [
    // [1] Ayat Kursi
    DzikirItem(
      arab:
          "أَعُوذُ بِاللَّهِ مِنَ الشَّيْطَانِ الرَّجِيمِ\n\nٱللَّهُ لَآ إِلَٰهَ إِلَّا هُوَ ٱلْحَىُّ ٱلْقَيُّومُ ۚ لَا تَأْخُذُهُۥ سِنَةٌ وَلَا نَوْمٌ ۚ لَّهُۥ مَا فِى ٱالسَّمَٰوَٰتِ وَمَا فِى ٱلْأَرْضِ ۗ مَن ذَا ٱلَّذِى يَشْفَعُ عِندَهُۥٓ إِلَّا بِإِذْنِهِۦ ۚ يَعْلَمُ مَا بَيْنَ أَيْدِيهِمْ وَمَا خَلْفَهُمْ ۖ وَلَا يُحِيطُونَ بِشَىْءٍ مِّنْ عِلْمِهِۦٓ إِلَّا بِمَا شَآءَ ۚ وَسِعَ كُرْسِيُّهُ ٱالسَّمَٰوَٰتِ وَٱلْأَرْضَ ۖ وَلَا يَـُٔودُهُۥ حِفْظُهُمَا ۚ وَهُوَ ٱلْعَلِىُّ ٱلْعَظِيمُ",
      latin:
          "Alloahu laa ilaaha illa Huwal Hayyul Qoyyuum, laa ta’khudzuhu sinatun walaa naum. Lahuu maa fis samaawaati wa maa fil ardh. Man dzal ladzii yasyfa’u ‘indahuu illa bi idznih. Ya’lamu maa bayna aydiihim wa maa kholfahum. Wa laa yuhiithuuna bi syai-im min ‘ilmihii illa bi maa syaa-a. Wasi’a kursiyyuhus samaawaati wal ardh, wa laa ya-uuduhuu hifzhuhumaa, wa Huwal ‘Aliyyul ‘Azhiim.",
      arti:
          "“Allah, tidak ada ilah (yang berhak disembah) melainkan Dia, yang hidup kekal lagi terus menerus mengurus (makhluk-Nya). Dia tidak mengantuk dan tidak tidur. Kepunyaan-Nya apa yang di langit dan di bumi. Tiada yang dapat memberi syafa’at di sisi-Nya tanpa seizin-Nya. Dia mengetahui apa-apa yang di hadapan mereka dan di belakang mereka. Mereka tidak mengetahui apa-apa dari ilmu Allah melainkan apa yang dikehendaki-Nya. Kursi Allah meliputi langit dan bumi. Dia tidak merasa berat memelihara keduanya. Dan Dia Maha Tinggi lagi Maha besar.” (QS. Al Baqarah: 255)",
      faedah:
          "Siapa yang membacanya ketika petang, maka ia akan dilindungi (oleh Allah dari berbagai gangguan) hingga pagi. Siapa yang membacanya ketika pagi, maka ia akan dilindungi hingga petang.",
      targetSajak: 1,
    ),

    // [2.1] Al-Ikhlas
    DzikirItem(
      arab:
          "بِسْمِ اللّٰهِ الرَّحْمٰنِ الرَّحِيْمِ\n\nقُلْ هُوَ اللّٰهُ أَحَدٌ ۝١ اللّٰهُ الصَّمَدُ ۝٢ لَمْ يَلِدْ وَلَمْ يُوْلَدْ ۝٣ وَلَمْ يَكُنْ لَّهُ كُفُوًا أَحَدٌ ۝٤",
      latin:
          "Bismillahir rohmanir rohiim. Qul huwallahu ahad. Allahush shomad. Lam yalid walam yuulad. Walam yakul lahuu kufuwan ahad.",
      arti:
          "“Dengan menyebut nama Allah Yang Maha Pengasih lagi Maha Penyayang. Katakanlah: Dialah Allah, Yang Maha Esa. Allah adalah ilah yang bergantung kepada-Nya segala urusan. Dia tidak beranak dan tiada pula diperanakkan, dan tidak ada seorang pun yang setara dengan Dia.” (QS. Al Ikhlas: 1-4)",
      faedah:
          "Siapa yang mengucapkannya masing-masing tiga kali ketika pagi dan petang, maka segala sesuatu akan dicukupkan untuknya.",
      targetSajak: 3,
    ),

    // [2.2] Al-Falaq
    DzikirItem(
      arab:
          "بِسْمِ اللّٰهِ الرَّحْمٰنِ الرَّحِيْمِ\n\nقُلْ أَعُوْذُ بِرَبِّ الْفَلَقِ ۝١ مِنْ شَرِّ مَا خَلَقَ ۝٢ وَمِنْ شَرِّ غَاسِقٍ إِذَا وَقَبَ ۝٣ وَمِنْ شَرِّ النَّفّٰثٰتِ فِي الْعُقَدِ ۝٤ وَمِنْ شَرِّ حَاسِدٍ إِذَا حَسَدَ ۝٥",
      latin:
          "Bismillahir rohmanir rohiim. Qul a’uudzu bi robbil falaq. Min syarri maa kholaq. Wa min syarri ghoosiqin idzaa waqob. Wa min syarri naffaatsaati fil ‘uqod. Wa min syarri haasidin idzaa hasad.",
      arti:
          "“Dengan menyebut nama Allah Yang Maha Pengasih lagi Maha Penyayang. Katakanlah: Aku berlindung kepada Rabb yang menguasai subuh, dari kejahatan makhluk-Nya, dan dari kejahatan malam apabila telah gelap gulita, dan dari kejahatan wanita tukang sihir yang menghembus pada buhul-buhul, dan dari kejahatan orang yang dengki apabila ia dengki.” (QS. Al Falaq: 1-5)",
      faedah:
          "Siapa yang mengucapkannya masing-masing tiga kali ketika pagi dan petang, maka segala sesuatu akan dicukupkan untuknya.",
      targetSajak: 3,
    ),

    // [2.3] An-Naas
    DzikirItem(
      arab:
          "بِسْمِ اللّٰهِ الرَّحْمٰنِ الرَّحِيْمِ\n\nقُلْ أَعُوْذُ بِرَبِّ النَّاسِ ۝١ مَلِكِ النَّاسِ ۝٢ إِلٰهِ النَّاسِ ۝٣ مِنْ شَرِّ الْوَسْوَاسِ الْخَنَّاسِ ۝٤ الَّذِي يُوَسْوِسُ فِي صُدُوْرِ النَّاسِ ۝٥ مِنَ الْجِنَّةِ وَالنَّاسِ ۝٦",
      latin:
          "Bismillahir rohmanir rohiim. Qul a’uudzu bi robbin naas. Malikin naas. Ilaahin naas. Min syarril waswaasil khonnaas. Alladzii yuwaswisu fii shuduurin naas. Minal jinnati wan naas.",
      arti:
          "“Dengan menyebut nama Allah Yang Maha Pengasih lagi Maha Penyayang. Katakanlah: Aku berlindung kepada Rabb manusia. Raja manusia. Sembahan manusia, dari kejahatan (bisikan) syaitan yang bersembunyi, yang membisikkan ke dalam dada manusia, dari golongan jin dan manusia.” (QS. An Naas: 1-6)",
      faedah:
          "Siapa yang mengucapkannya masing-masing tiga kali ketika pagi dan petang, maka segala sesuatu akan dicukupkan untuknya.",
      targetSajak: 3,
    ),

    // [3] Amsaynaa wa amsal mulku lillah
    DzikirItem(
      arab:
          "أَمْسَيْنَا وَأَمْسَى الْمُلْكُ للهِ، وَالْحَمْدُ للهِ، لَا إِلَهَ إِلاَّ اللهُ وَحْدَهُ لاَ شَرِيكَ لَهُ، لَهُ الْمُلْكُ وَلَهُ الْحَمْدُ، وَهُوَ عَلَى كُلِّ شَيْءٍ قَدِيرٌ، رَبِّ أَسْأَلُكَ خَيْرَ مَا فِي هَذِهِ اللَّيْلَةِ وَخَيْرَ مَا بَعْدَهَا، وَأَعُوذُبِكَ مِنْ شَرِّ مَا فِي هَذِهِ اللَّيْلَةِ وَشَرِّ مَا بَعْدَهَا، رَبِّ أَعُوذُبِكَ مِنَ الْكَسَلِ وَسُوءِ الْكِبَرِ، رَبِّ أَعُوذُبِكَ مِنْ عَذَابٍ فِي النَّارِ وَعَذَابٍ فِي الْقَبْرِ",
      latin:
          "Amsaynaa wa amsal mulku lillah walhamdulillah, laa ilaha illallah wahdahu laa syarika lah, lahul mulku walahul hamdu wa huwa ‘ala kulli syai-in qodir. Robbi as-aluka khoiro maa fii hadzihil lailah wa khoiro maa ba’dahaa, wa a’udzu bika min syarri maa fii hadzihil lailah wa syarri maa ba’dahaa. Robbi a’udzu bika minal kasali wa suu-il kibar. Robbi a’udzu bika min ‘adzabin fin naari wa ‘adzabin fil qobri.",
      arti:
          "“Kami telah memasuki waktu petang dan kerajaan hanya milik Allah, segala puji bagi Allah. Tidak ada ilah (yang berhak disembah) kecuali Allah semata, tiada sekutu bagi-Nya. Milik Allah kerajaan dan bagi-Nya pujian. Dia-lah Yang Mahakuasa atas segala sesuatu. Wahai Rabbku, aku mohon kepada-Mu kebaikan di malam ini dan kebaikan sesudahnya. Aku berlindung kepadaMu dari kejahatan malam ini dan kejahatan sesudahnya. Wahai Rabbku, aku berlindung kepadaMu dari kemalasan dan kejelekan di hari tua. Wahai Rabbku, aku berlindung kepada-Mu dari siksaan di neraka dan siksaan di kubur.”",
      faedah:
          "Meminta pada Allah kebaikan di malam ini dan kebaikan sesudahnya, juga agar terhindar dari kejelekan di malam ini dan kejelekan sesudahnya. Di dalamnya berisi pula permintaan agar terhindar dari rasa malas padahal mampu untuk beramal, juga agar terhindar dari kejelekan di masa tua. Di dalamnya juga berisi permintaan agar terselamatkan dari siksa kubur dan siksa neraka yang merupakan siksa terberat di hari kiamat kelak.",
      targetSajak: 1,
    ),

    // [4] Allahumma bika amsaynaa
    DzikirItem(
      arab:
          "اللَّهُمَّ بِكَ أَمْسَيْنَا، وَبِكَ أَصْبَحْنَا،وَبِكَ نَحْيَا، وَبِكَ نَمُوتُ، وَإِلَيْكَ الْمَصِيْرُ",
      latin:
          "Allahumma bika amsaynaa wa bika ash-bahnaa wa bika nahyaa wa bika namuutu wa ilaikal mashiir.",
      arti:
          "“Ya Allah, dengan rahmat dan pertolongan-Mu kami memasuki waktu petang, dan dengan rahmat dan pertolongan-Mu kami memasuki waktu pagi. Dengan rahmat dan pertolonganMu kami hidup dan dengan kehendakMu kami mati. Dan kepada-Mu tempat kembali (bagi semua makhluk).”",
      faedah:
          "Menyerahkan orientasi kesadaran hidup akhir hari sepenuhnya hanya kepada Allah sebagai muara akhir tempat kembali.",
      targetSajak: 1,
    ),

    // [5] Sayyidul Istighfar
    DzikirItem(
      arab:
          "اَللَّهُمَّ أَنْتَ رَبِّيْ لاَ إِلَـهَ إِلاَّ أَنْتَ، خَلَقْتَنِيْ وَأَنَا عَبْدُكَ، وَأَنَا عَلَى عَهْدِكَ وَوَعْدِكَ مَا اسْتَطَعْتُ، أَعُوْذُ بِكَ مِنْ شَرِّ مَا صَنَعْتُ، أَبُوْءُ لَكَ بِنِعْمَتِكَ عَلَيَّ، وَأَبُوْءُ بِذَنْبِيْ فَاغْفِرْ لِيْ فَإِنَّهُ لاَ يَغْفِرُ الذُّنُوْبَ إِلاَّ أَنْتَ",
      latin:
          "Allahumma anta robbii laa ilaha illa anta, kholaqtanii wa anaa ‘abduka wa anaa ‘ala ‘ahdika wa wa’dika mas-tatho’tu. A’udzu bika min syarri maa shona’tu. Abu-u laka bi ni’matika ‘alayya wa abu-u bi dzambii. Fagh-firlii fainnahu laa yagh-firudz dzunuuba illa anta.",
      arti:
          "“Ya Allah, Engkau adalah Rabbku, tidak ada ilah yang berhak disembah kecuali Engkau, Engkaulah yang menciptakanku. Aku adalah hamba-Mu. Aku akan setia pada perjanjianku pada-Mu (yaitu aku akan mentauhidkan-Mu) semampuku dan aku yakin akan janji-Mu (berupa surga untukku). Aku berlindung kepada-Mu dari kejelekan yang kuperbuat. Aku mengakui nikmat-Mu kepadaku dan aku mengakui dosaku. Oleh karena itu, ampunilah aku. Sesungguhnya tiada yang mengampuni dosa kecuali Engkau.”",
      faedah:
          "Barangsiapa mengucapkan dzikir ini di siang hari dalam keadaan penuh keyakinan, lalu ia mati pada hari tersebut sebelum petang hari, maka ia termasuk penghuni surga. Barangsiapa yang mengucapkannya di malam hari dalam keadaan penuh keyakinan, lalu ia mati sebelum pagi, maka ia termasuk penghuni surga.",
      targetSajak: 1,
    ),

    // [6] Allahumma inni amsaytu usy-hiduka
    DzikirItem(
      arab:
          "اَللَّهُمَّ إِنِّيْ أَمْسَيْتُ أُشْهِدُكَ وَأُشْهِدُ حَمَلَةَ عَرْشِكَ، وَمَلاَئِكَتَكَ وَجَمِيْعَ خَلْقِكَ، أَنَّكَ أَنْتَ اللهُ لاَ إِلَـهَ إِلاَّ أَنْتَ وَحْدَكَ لاَ شَرِيْكَ لَكَ، وَأَنَّ مُحَمَّدًا عَبْدُكَ وَرَسُوْلُكَ",
      latin:
          "Allahumma inni amsaytu usy-hiduka wa usy-hidu hamalata ‘arsyika wa malaa-ikatak wa jami’a kholqik, annaka antallahu laa ilaha illa anta wahdaka laa syariika lak, wa anna Muhammadan ‘abduka wa rosuuluk.",
      arti:
          "“Ya Allah, sesungguhnya aku di waktu petang ini mempersaksikan Engkau, malaikat yang memikul ‘Arys-Mu, malaikat-malaikat dan seluruh makhluk-Mu, bahwa sesungguhnya Engkau adalah Allah, tiada ilah yang berhak disembah kecuali Engkau semata, tiada sekutu bagi-Mu dan sesungguhnya Muhammad adalah hamba dan utusan-Mu.”",
      faedah:
          "Barangsiapa yang mengucapkan dzikir ini ketika pagi dan petang hari sebanyak empat kali, maka Allah akan membebaskan dirinya dari siksa neraka.",
      targetSajak: 4,
    ),

    // [7] Allahumma innii as-alukal ‘afwa wal ‘aafiyah
    DzikirItem(
      arab:
          "اَللَّهُمَّ إِنِّيْ أَسْأَلُكَ الْعَفْوَ وَالْعَافِيَةَ فِي الدُّنْيَا وَاْلآخِرَةِ، اَللَّهُمَّ إِنِّيْ أَسْأَلُكَ الْعَفْوَ وَالْعَافِيَةَ فِي دِيْنِيْ وَدُنْيَايَ وَأَهْلِيْ وَمَالِيْ اللَّهُمَّ اسْتُرْ عَوْرَاتِى وَآمِنْ رَوْعَاتِى. اَللَّهُمَّ احْفَظْنِيْ مِنْ بَيْنِ يَدَيَّ، وَمِنْ خَلْفِيْ، وَعَنْ يَمِيْنِيْ وَعَنْ شِمَالِيْ، وَمِنْ فَوْقِيْ، وَأَعُوْذُ بِعَظَمَتِكَ أَنْ أُغْتَالَ مِنْ تَحْتِيْ",
      latin:
          "Allahumma innii as-alukal ‘afwa wal ‘aafiyah fid dunyaa wal aakhiroh. Allahumma innii as-alukal ‘afwa wal ‘aafiyah fii diinii wa dun-yaaya wa ahlii wa maalii. Allahumas-tur ‘awrootii wa aamin row’aatii. Allahummahfazh-nii mim bayni yadayya wa min kholfii wa ‘an yamiinii wa ‘an syimaalii wa min fawqii wa a’udzu bi ‘azhomatik an ugh-taala min tahtii.",
      arti:
          "“Ya Allah, sesungguhnya aku memohon kebajikan dan keselamatan di dunia dan akhirat. Ya Allah, sesungguhnya aku memohon kebajikan dan keselamatan dalam agama, dunia, keluarga dan hartaku. Ya Allah, tutupilah auratku (aib dan sesuatu yang tidak layak dilihat orang) dan tenteramkanlah aku dari rasa takut. Ya Allah, peliharalah aku dari muka, belakang, kanan, kiri dan atasku. Aku berlindung dengan kebesaran-Mu, agar aku tidak disambar dari bawahku (oleh ular atau tenggelam dalam bumi dan lain-lain yang membuat aku jatuh).”",
      faedah:
          "Rasulullah shallallahu ‘alaihi wa sallam tidaklah pernah meninggalkan do’a ini di pagi dan petang hari. Di dalamnya berisi perlindungan dan keselamatan pada agama, dunia, keluarga dan harta dari berbagai macam gangguan yang datang dari berbagai arah.",
      targetSajak: 1,
    ),

    // [8] Allahumma ‘aalimal ghoybi wasy-syahaadah
    DzikirItem(
      arab:
          "اَللَّهُمَّ عَالِمَ الْغَيْبِ وَالشَّهَادَةِ فَاطِرَ السَّمَاوَاتِ وَاْلأَرْضِ، رَبَّ كُلِّ شَيْءٍ وَمَلِيْكَهُ، أَشْهَدُ أَنْ لاَ إِلَـهَ إِلاَّ أَنْتَ، أَعُوْذُ بِكَ مِنْ شَرِّ نَفْسِيْ، وَمِنْ شَرِّ الشَّيْطَانِ وَشِرْكِهِ، وَأَنْ أَقْتَرِفَ عَلَى نَفْسِيْ سُوْءًا أَوْ أَجُرَّهُ إِلَى مُسْلِمٍ",
      latin:
          "Allahumma ‘aalimal ghoybi wasy-syahaadah faathiros samaawaati wal ardh. Robba kulli syai-in wa maliikah. Asyhadu alla ilaha illa anta. A’udzu bika min syarri nafsii wa min syarrisy-syaythooni wa syirkihi, wa an aqtarifa ‘alaa nafsii suu-an aw ajurrohu ilaa muslim.",
      arti:
          "“Ya Allah, Yang Maha Mengetahui yang ghaib dan yang nyata, wahai Rabb pencipta langit dan bumi, Rabb segala sesuatu dan yang merajainya. Aku bersaksi bahwa tidak ada ilah yang berhak disembah kecuali Engkau. Aku berlindung kepadaMu dari kejahatan diriku, setan dan balatentaranya (godaan untuk berbuat syirik pada Allah), dan aku (berlindung kepada-Mu) dari berbuat kejelekan terhadap diriku atau menyeretnya kepada seorang muslim.”",
      faedah:
          "Do’a ini diajarkan oleh Rasulullah shallallahu ‘alaihi wa sallam pada Abu Bakr Ash Shiddiq untuk dibaca pada pagi, petang dan saat beranjak tidur.",
      targetSajak: 1,
    ),

    // [9] Bismillahilladzi laa yadhurru
    DzikirItem(
      arab:
          "بِسْمِ اللَّهِ الَّذِى لاَ يَضُرُّ mَعَ اسْمِهِ شَىْءٌ فِى الأَرْضِ وَلاَ فِى السَّمَاءِ وَهُوَ السَّمِيعُ الْعَلِيمُ",
      latin:
          "Bismillahilladzi laa yadhurru ma’asmihi syai-un fil ardhi wa laa fis samaa’ wa huwas samii’ul ‘aliim.",
      arti:
          "“Dengan nama Allah yang bila disebut, segala sesuatu di bumi dan langit tidak akan berbahaya, Dia-lah Yang Maha Mendengar lagi Maha Mengetahui.”",
      faedah:
          "Barangsiapa yang mengucapkan dzikir tersebut sebanyak tiga kali di pagi hari dan tiga kali di petang hari, maka tidak akan ada bahaya yang tiba-tiba yang memudaratkannya.",
      targetSajak: 3,
    ),

    // [10] Rodhiitu billaahi robbaa
    DzikirItem(
      arab:
          "رَضِيْتُ بِاللهِ رَبًّا، وَبِاْلإِسْلاَمِ دِيْنًا، وَبِمُحَمَّدٍ صَلَّى اللهُ عَلَيْهِ وَسَلَّمَ نَبِيًّا",
      latin:
          "Rodhiitu billaahi robbaa wa bil-islaami diinaa, wa bi-muhammadin shallallaahu ‘alaihi wa sallama nabiyyaa.",
      arti:
          "“Aku ridha Allah sebagai Rabb, Islam sebagai agama dan Muhammad shallallahu ‘alaihi wa sallam sebagai nabi.”",
      faedah:
          "Barangsiapa yang mengucapkan hadits ini sebanyak tiga kali di pagi hari dan tiga kali di petang hari, maka pantas baginya mendapatkan ridha Allah.",
      targetSajak: 3,
    ),

    // [11] Yaa Hayyu Yaa Qoyyum
    DzikirItem(
      arab:
          "يَا حَيُّ يَا قَيُّوْمُ بِرَحْمَتِكَ أَسْتَغِيْثُ، وَأَصْلِحْ لِيْ شَأْنِيْ كُلَّهُ وَلاَ تَكِلْنِيْ إِلَى نَفْسِيْ طَرْفَةَ عَيْنٍ أَبَدًا",
      latin:
          "Yaa Hayyu Yaa Qoyyum, bi-rohmatika as-taghiits, wa ash-lih lii sya’nii kullahu wa laa takilnii ilaa nafsii thorfata ‘ainin abadan.",
      arti:
          "“Wahai Rabb Yang Maha Hidup, wahai Rabb Yang Berdiri Sendiri (tidak butuh segala sesuatu), dengan rahmat-Mu aku minta pertolongan, perbaikilah segala urusanku dan jangan diserahkan kepadaku sekali pun sekejap mata (tanpa mendapat pertolongan dariMu).”",
      faedah:
          "Dzikir ini diajarkan oleh Nabi shallallahu ‘alaihi wa sallam pada Fathimah supaya diamalkan pagi dan petang.",
      targetSajak: 1,
    ),

    // [12] Subhanallah wa bi-hamdih
    DzikirItem(
      arab: "سُبْحَانَ اللهِ وَبِحَمْدِهِ",
      latin: "Subhanallah wa bi-hamdih.",
      arti: "“Maha suci Allah, aku memuji-Nya.”",
      faedah:
          "Barangsiapa yang mengucapkan kalimat ‘subhanallah wa bi hamdih’ di pagi dan petang hari sebanyak 100 x, maka tidak ada yang datang pada hari kiamat yang lebih baik dari yang ia lakukan kecuali orang yang mengucapkan semisal atau lebih dari itu.",
      targetSajak: 100,
    ),

    // [13] Laa ilaha illallah (10x)
    DzikirItem(
      arab:
          "لاَ إِلَـهَ إِلاَّ اللهُ وَحْدَهُ لاَ شَرِيْكَ لَهُ، لَهُ الْمُلْكُ وَلَهُ الْحَمْدُ وَهُوَ عَلَى كُلِّ شَيْءٍ قَدِيْرُ",
      latin:
          "Laa ilaha illallah wahdahu laa syarika lah, lahul mulku walahul hamdu wa huwa ‘ala kulli syai-in qodiir.",
      arti:
          "“Tidak ada ilah yang berhak disembah selain Allah semata, tidak ada sekutu bagi-Nya. Bagi-Nya kerajaan dan segala pujian. Dia-lah yang berkuasa atas segala sesuatu.”",
      faedah:
          "Barangsiapa yang membaca dzikir tersebut di pagi hari sebanyak sepuluh kali, Allah akan mencatatkan baginya 10 kebaikan, menghapuskan baginya 10 kesalahan... Siapa yang mengucapkannya di petang hari, ia akan mendapatkan keutamaan semisal itu pula.",
      targetSajak: 10,
    ),

    // [14] A'udzu bikalimaatillahit-taammaati
    DzikirItem(
      arab: "أَعُوْذُ بِكَلِمَاتِ اللهِ التَّامَّاتِ مِنْ شَرِّ مَا خَلَقَ",
      latin: "A’udzu bikalimaatillahit-taammaati min syarri maa kholaq.",
      arti:
          "“Aku berlindung dengan kalimat-kalimat Allah yang sempurna dari kejahatan makhluk yang diciptakanNya.”",
      faedah:
          "Dibaca sebanyak 3 x secara rutin pada waktu sore/petang agar terjaga penuh dari sengatan serangga/binatang berbisa serta kejahatan malam.",
      targetSajak: 3,
    ),
  ];
}
