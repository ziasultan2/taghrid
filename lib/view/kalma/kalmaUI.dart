import 'package:app/model/KalimaModel.dart';
import 'package:flutter/material.dart';

class KalmaUI extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Kalima'),
      ),
      body: Container(
          margin: EdgeInsets.all(20),
          child: ListView.builder(
              shrinkWrap: true,
              itemCount: kalima.length,
              itemBuilder: (BuildContext ctxt, int index) {
                return Card(
                  margin: EdgeInsets.only(bottom: 20),
                  child: ListView(
                    shrinkWrap: true,
                    physics: NeverScrollableScrollPhysics(),
                    children: [
                      Text(
                        kalima[index].arabic,
                        style: TextStyle(
                            fontSize: 25, fontWeight: FontWeight.bold),
                      ),
                      Text(
                        kalima[index].pronunciation,
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                      Text(kalima[index].translation,
                          style:
                              TextStyle(fontSize: 20, color: Colors.grey[800]))
                    ],
                  ),
                );
              })),
    );
  }
}

const List<Kalima> kalima = const <Kalima>[
  const Kalima(
      arabic: 'لَا إِلَٰهَ إِلَّا ٱللَّٰهُ مُحَمَّدٌ رَسُولُ ٱللَّٰهِ',
      pronunciation: 'Laaa Ilaaha Illa-llaahu Muhammadur-Rasoolu-llaah ',
      translation:
          'There is none worthy of worship except Allah and Muhammad is the Messenger of Allah'),
  const Kalima(
      arabic:
          'لأَشْهَدُ أَنْ لَا إِلَٰهَ إِلَّا ٱللَّٰهُ وَحْدَهُ لَا شَرِيكَ لَهُ وأَشْهَدُ أَنَّ مُحَمَّدًا عَبْدُهُ وَرَسُولُهُ',
      pronunciation:
          'Ash-hadu Al-laaa Ilaaha Illa-llaahu Wahdahoo Laa Shareeka Lahoo Wa-Ash-hadu Anna Muhammadan ‘Abduhoo Wa Rasooluhu.',
      translation:
          'I bear witness that there is none worthy of worship except Allah, the One alone, without partner, and I bear witness that Muhammad is His servant and Messenger'),
  const Kalima(
      arabic:
          'لسُبْحَانَ ٱللَّٰهِ وَٱلْحَمْدُ لِلَّٰهِ وَلَا إِلَٰهَ إِلَّا ٱللَّٰهُ وَٱللَّٰهُ أَكْبَرُ وَلَا حَوْلَ وَلَا قُوَّةَ إِلَّا بِٱللَّٰهِ ٱلْعَلِيِّ ٱلْعَظِيمِ',
      pronunciation:
          'Subhaana-llaahi Walhamdu Lillaahi Walaaa Ilaaha Illa-llaahu Wallaahu Akbar. Walaa Hawla Walaa Quwwata Illaa Billaahi-l ‘Aliyyil ‘Azeem.',
      translation:
          'Glory be to Allah and all praise be to Allah, there is none worthy of worship except Allah, and Allah is the Greatest. There is no might or power except from Allah, the Exalted, the Great One.'),
  const Kalima(
      arabic:
          'للَا إِلَٰهَ إِلَّا ٱللَّٰهُ وَحْدَهُ لَا شَرِيكَ لَهُ، لَهُ ٱلْمُلْكُ وَلَهُ ٱلْحَمْدُ، يُحْيِي وَيُمِيتُ وَهُوَ حَيٌّ لَا يَمُوتُ أَبَدًا أَبَدًا، ذُو ٱلْجَلَالِ وَٱلْإِكْرَامِ بِيَدِهِ ٱلْخَيْرُ وَهُوَ عَلَىٰ كُلِّ شَيْءٍ قَدِيرٌ',
      pronunciation:
          'Laaa Ilaaha Illa-llaahu Wahdahoo Laa Shareeka-lahoo Lahu-l Mulku Walahu-l Hamdu Yuhyee Wayumeetu Wahuwa Hayyu-l Laa Yamootu Abadan Abada. Dhu-l Jalaali Wal Ikraam. Biyadihil Khair. Wahuwa Alaa Kulli Shai-’in Qadeer.',
      translation:
          'There is none worthy of worship except Allah. He is alone and has no partner. To Him belongs the Kingdom and for Him is all praise. He gives life and causes death. In His hand is all good and He has power over everything'),
  const Kalima(
      arabic:
          'لأَسْتَغْفِرُ ٱللَّٰهَ رَبِّي مِنْ كُلِّ ذَنْبٍ أَذْنَبْتُهُ عَمْدًا أَوْ خَطَأً سِرًّا وَعَلَانِيَةً وَأَتُوبُ إِلَيْهِ مِنَ ٱلذَّنْبِ ٱلَّذِي أَعْلَمُ وَمِنَ ٱلذَّنْبِ ٱلَّذِي لَا أَعْلَمُ، إِنَّكَ أَنْتَ عَلَّامُ ٱلْغُيُوبِ وَسَتَّارُ ٱلْعُيُوْبِ وَغَفَّارُ ٱلذُّنُوبِ وَلَا حَوْلَ وَلَا قُوَّةَ إِلَّا بِٱللَّٰهِ ٱلْعَلِيِّ ٱلْعَظِيمِ',
      pronunciation:
          'Astaghfiru-llaaha Rabbi Min Kulli Dhambin Adhnabtuhoo ‘Amadan Aw Khata-an Sirran Aw ‘Alaaniyata-wn Wa-atoobu Ilaihi Min-adh Dhambi-l Ladhee A’lamu Wamina-dh Dhambi-l Ladhi Laaa A’lamu Innaka Anta ‘Allaamu-l Ghuyoobi Wasattaaru-l ‘Uyoobi Wa Ghaffaaru-dh Dhunubi Walaa Hawla Walaa Quwwata Illaa Billaahi-l ‘Aliyyil ‘Azeem.  ',
      translation:
          ' I seek forgiveness from Allah, who is my Creator and Cheriser, from every sin I committed knowingly or unknowingly, secretly or openly. I also seek His forgiveness for all sins which I am aware of or am not aware of. Certainly You (O Allah!), are the Knower of the hidden and the Concealer of mistakes and the Forgiver of sins. And there is no power and no strength except from Allah, the Most High, the Most Great.'),
  const Kalima(
      arabic:
          'ٱللَّٰهُمَّ إِنِّي أَعُوذُ بِكَ مِنْ أَنْ أُشْرِكَ بِكَ شَيْءً وَأَنَا أَعْلَمُ بِهِ وَأَسْتَغْفِرُكَ لِمَا لَا أَعْلَمُ بِهِ تُبْتُ عَنْهُ وَتَبَرَّأَتُ مِنَ ٱلْكُفْرِ وَٱلشِّرْكِ وَٱلْكِذْبِ وَٱلْغِيبَةِ وَٱلْبِدْعَةِ وَٱلنَّمِيمَةِ وَٱلْفَوَاحِشِ وَٱلْبُهْتَانِ وَٱلْمَعَاصِي كُلِّهَا وَأَسْلَمْتُ وَأَقُولُ لَا إِلَٰهَ إِلَّا ٱللَّٰهُ مُحَمَّدٌ رَسُولُ ٱللَّٰهِ',
      pronunciation:
          'Allaa-humma Inneee A’udhu-bika Min An Ushrika Bika Shay-awn Wa-ana A’lamu Bihee Wa- astaghfiruka Limaa Laaa A’lamu Bihee Tubtu ‘Anhu Wata-barraatu Mina-l Kufri Wash-shirki Wal-kidhbi Wal-gheebati Wal-bid’ati Wan-nameemati Wal-fawahishi Wal-buhtaani Wal-m’aasi Kulli-haa Wa-Aslamtu Wa-aqoolu Laaa Ilaaha Illa-llaahu Muhammadu-r Rasoolu-llah.',
      translation:
          'O Allah! I seek refuge in You from that I should ascribe any partner with You knowingly. I seek Your forgiveness for the sin of which I have no knowledge. I repent from it. And becoming disgusted of disbelief and idolatry, lying and backbiting, innovation and slander, lewdness and abomination and all other acts of disobedience, I submit to Your will. I believe and I declare that there is none worthy of worship except Allah and Muhammad is the Messenger of Allah.'),
];
