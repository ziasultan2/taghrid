class Choice {
  const Choice({this.title, this.icon, this.type});
  final String title;
  final String icon;
  final int type;
}

class HomeType {
  static const quran = 0;
  static const hadith = 1;
  static const qibla = 2;
  static const prayerTime = 3;
  static const kalima = 4;
  static const dua = 5;
  static const tasbih = 6;
  static const calender = 7;
  static const name = 8;
}

class QuranType {
  static const surah = 0;
  static const manzils = 1;
  static const hizb = 2;
  static const juz = 3;
  static const sajda = 4;
  static const ruku = 5;
}

const List<Choice> home = const <Choice>[
  const Choice(title: 'Quran', icon: 'quran.png', type: HomeType.quran),
  const Choice(title: 'Hadith', icon: 'hadith.png', type: HomeType.hadith),
  // const Choice(title: 'Qibla', icon: 'qibla.png', type: HomeType.qibla),
  // const Choice(
  //     title: 'Prayer Time', icon: 'time.png', type: HomeType.prayerTime),
  const Choice(title: 'Khatma', icon: 'kalma.png', type: HomeType.kalima),
  const Choice(title: 'Daily Dua', icon: 'dua.png', type: HomeType.dua),
  const Choice(title: 'Names of Allah', icon: 'name.png', type: HomeType.name),
  const Choice(title: 'Tasbih', icon: 'tasbih.jpg', type: HomeType.tasbih),
  // const Choice(
  //     title: 'Calendar', icon: 'calendar.png', type: HomeType.calender),
];

const List<Choice> quran = const <Choice>[
  const Choice(title: 'Surah', icon: 'quran.png', type: QuranType.surah),
  const Choice(title: 'Manzil', icon: 'hadith.png', type: QuranType.manzils),
  const Choice(title: 'Hizb Quarter', icon: 'qibla.png', type: QuranType.hizb),
  const Choice(title: 'Juz', icon: 'time.png', type: QuranType.juz),
  const Choice(title: 'Sajda', icon: 'time.png', type: QuranType.sajda),
  const Choice(title: 'Ruku', icon: 'time.png', type: QuranType.ruku),
];
