class Choice {
  const Choice({this.title, this.icon, this.type});
  final String title;
  final String icon;
  final int type;
}

class HomeType {
  static const quran = 0;
  static const names = 1;
  static const qibla = 2;
  static const prayerTime = 3;
  static const tasbih = 4;
  static const dua = 5;
  static const khatma = 6;
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
  const Choice(title: 'Smart Quran ', icon: 'quran.png', type: HomeType.quran),
  const Choice(title: '99 names', icon: 'name.png', type: HomeType.names),
  const Choice(title: 'Adhkar', icon: 'adhkar.png', type: HomeType.qibla),
  const Choice(
      title: 'Prayer Time', icon: 'time.jpeg', type: HomeType.prayerTime),
  const Choice(title: 'Tasbih', icon: 'tasbih.jpg', type: HomeType.tasbih),
  const Choice(title: 'Daily Dua', icon: 'dua.png', type: HomeType.dua),
  const Choice(title: 'Names of Allah', icon: 'name.png', type: HomeType.name),
  const Choice(title: 'Tasbih', icon: 'tasbih.jpg', type: HomeType.tasbih),
  const Choice(
      title: 'Classic Quran', icon: 'kalma.png', type: HomeType.khatma),
  // const Choice(
  //     title: 'Calendar', icon: 'calendar.png', type: HomeType.calender),
];
