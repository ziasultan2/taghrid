import 'package:app/model/name.dart';
import 'package:flutter/material.dart';

class NameUI extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Names of Allah'),
      ),
      body: Container(
        child: ListView.builder(
            itemCount: namesOfAllah.length,
            itemBuilder: (context, index) {
              return ListTile(
                title: Text(namesOfAllah[index].arabic),
                subtitle: Text(namesOfAllah[index].translation),
              );
            }),
      ),
    );
  }
}

const List<Name> namesOfAllah = const <Name>[
  const Name(
      id: 1,
      arabic: 'ٱلْرَّحْمَـانُ',
      transliteration: 'AR-RAHMAAN',
      translation: 'The Most or Entirely Merciful'),
  const Name(
      id: 2,
      arabic: 'ٱلْرَّحِيْمُ',
      transliteration: 'AR-RAHEEM',
      translation: 'The Bestower of Mercy'),
  const Name(
      id: 3,
      arabic: 'ٱلْمَلِكُ',
      transliteration: 'AL-MALIK',
      translation: 'The King and Owner of Dominion'),
  const Name(
      id: 4,
      arabic: 'ٱلْقُدُّوسُ',
      transliteration: 'AL-QUDDUS',
      translation: 'The Absolutely Pure'),
  const Name(
      id: 5,
      arabic: 'ٱلْسَّلَامُ',
      transliteration: 'AS-SALAM',
      translation: 'The Perfection and Giver of Peace'),
  const Name(
      id: 6,
      arabic: 'ٱلْمُؤْمِنُ',
      transliteration: 'AL-MU’MIN',
      translation: 'The One Who gives Emaan and Security'),
  const Name(
      id: 7,
      arabic: 'ٱلْمُهَيْمِنُ',
      transliteration: 'AL-MUHAYMIN',
      translation: 'The Guardian, The Witness, The Overseer'),
  const Name(
      id: 8,
      arabic: 'ٱلْعَزِيزُ',
      transliteration: 'AL-AZEEZ',
      translation: 'The All Mighty'),
  const Name(
      id: 9,
      arabic: 'ٱلْجَبَّارُ',
      transliteration: 'AL-JABBAR',
      translation: 'The Compeller, The Restorer'),
  const Name(
      id: 10,
      arabic: 'ٱلْمُتَكَبِّرُ',
      transliteration: 'AL-MUTAKABBIR',
      translation: 'The Supreme, The Majestic'),
  const Name(
      id: 11,
      arabic: 'ٱلْخَالِقُ',
      transliteration: 'AL-KHAALIQ',
      translation: 'The Creator, The Maker'),
  const Name(
      id: 12,
      arabic: 'ٱلْبَارِئُ',
      transliteration: 'AL-BAARI’',
      translation: 'The Originator'),
  const Name(
      id: 13,
      arabic: 'ٱلْمُصَوِّرُ',
      transliteration: 'AL-MUSAWWIR',
      translation: 'he Fashioner'),
  const Name(
      id: 14,
      arabic: 'ٱلْغَفَّارُ',
      transliteration: 'AL-GHAFFAR',
      translation: 'The All- and Oft-Forgiving'),
  const Name(
      id: 15,
      arabic: 'ٱلْقَهَّارُ',
      transliteration: 'AL-QAHHAR',
      translation: 'The Subduer, The Ever-Dominating'),
  const Name(
      id: 16,
      arabic: 'ٱلْوَهَّابُ',
      transliteration: 'AL-WAHHAAB',
      translation: 'The Giver of Gifts'),
  const Name(
      id: 17,
      arabic: 'ٱلْرَّزَّاقُ',
      transliteration: 'AR-RAZZAAQ',
      translation: 'The Provider'),
  const Name(
      id: 18,
      arabic: 'ٱلْفَتَّاحُ',
      transliteration: 'AL-FATTAAH',
      translation: 'The Opener, The Judge'),
  const Name(
      id: 19,
      arabic: 'ٱلْعَلِيمُ',
      transliteration: 'AL-‘ALEEM',
      translation: 'The All-Knowing, The Omniscient'),
  const Name(
      id: 20,
      arabic: 'ٱلْقَابِضُ',
      transliteration: 'AL-QAABID',
      translation: 'The Withholder'),
  const Name(
      id: 21,
      arabic: 'ٱلْبَاسِطُ',
      transliteration: 'AL-BAASIT',
      translation: 'The Extender'),
  const Name(
      id: 22,
      arabic: 'ٱلْخَافِضُ',
      transliteration: 'AL-KHAAFIDH',
      translation: 'The Reducer, The Abaser'),
  const Name(
      id: 23,
      arabic: 'ٱلْرَّافِعُ',
      transliteration: 'AR-RAAFI’',
      translation: 'The Exalter, The Elevator'),
  const Name(
      id: 24,
      arabic: 'ٱلْمُعِزُّ',
      transliteration: 'AL-MU’IZZ',
      translation: 'The Honourer, The Bestower'),
  const Name(
      id: 25,
      arabic: 'ٱلْمُذِلُّ',
      transliteration: 'AL-MUZIL',
      translation: 'The Dishonourer, The Humiliator'),
  const Name(
      id: 26,
      arabic: 'ٱلْسَّمِيعُ',
      transliteration: 'AS-SAMEE’',
      translation: 'The All-Hearing'),
  const Name(
      id: 27,
      arabic: 'ٱلْبَصِيرُ',
      transliteration: 'AL-BASEER',
      translation: 'The All-Seeing'),
  const Name(
      id: 28,
      arabic: 'ٱلْحَكَمُ',
      transliteration: 'AL-HAKAM’',
      translation: 'The Judge, The Giver of Justice'),
  const Name(
      id: 29,
      arabic: 'ٱلْعَدْلُ',
      transliteration: 'AL-‘ADL',
      translation: 'The Utterly Just'),
  const Name(
      id: 30,
      arabic: 'ٱلْلَّطِيفُ',
      transliteration: 'AL-LATEEF',
      translation: 'The Subtle One, The Most Gentle'),
  const Name(
      id: 31,
      arabic: 'ٱلْخَبِيرُ',
      transliteration: 'AL-KHABEER',
      translation: 'The Acquainted, the All-Aware'),
  const Name(
      id: 32,
      arabic: 'ٱلْحَلِيمُ',
      transliteration: 'AL-HALEEM',
      translation: 'The Most Forbearing'),
  const Name(
      id: 33,
      arabic: '	ٱلْعَظِيمُ',
      transliteration: 'AL-‘ATHEEM',
      translation: 'The Magnificent, The Supreme'),
  const Name(
      id: 34,
      arabic: '	ٱلْغَفُورُ',
      transliteration: 'AL-GHAFOOR',
      translation: 'The Forgiving, The Exceedingly Forgiving'),
  const Name(
      id: 35,
      arabic: 'ٱلْشَّكُورُ',
      transliteration: 'ASH-SHAKOOR',
      translation: 'The Most Appreciative'),
  const Name(
      id: 36,
      arabic: 'ٱلْسَّلَامُ',
      transliteration: 'AL-‘ALEE',
      translation: 'The Most High, The Exalted'),
  const Name(
      id: 37,
      arabic: 'ٱلْكَبِيرُ',
      transliteration: 'AL-KABEER',
      translation: 'The Greatest, The Most Grand'),
  const Name(
      id: 38,
      arabic: '	ٱلْحَفِيظُ',
      transliteration: 'AL-HAFEEDH',
      translation: 'The Preserver, The All-Heedful and All-Protecting'),
  const Name(
      id: 39,
      arabic: '	ٱلْمُقِيتُ',
      transliteration: 'AL-MUQEET',
      translation: 'The Sustainer'),
  const Name(
      id: 40,
      arabic: 'ٱلْحَسِيبُ',
      transliteration: 'AL-HASEEB',
      translation: 'The Reckoner, The Sufficient'),
  const Name(
      id: 41,
      arabic: 'ٱلْجَلِيلُ',
      transliteration: 'AL-JALEEL',
      translation: 'The Majestic'),
  const Name(
      id: 42,
      arabic: '	ٱلْكَرِيمُ',
      transliteration: 'AL-KAREEM',
      translation: 'The Most Generous, The Most Esteemed'),
  const Name(
      id: 43,
      arabic: 'ٱلْبَارِئُ',
      transliteration: 'AR-RAQEEB',
      translation: 'The Watchful'),
  const Name(
      id: 44,
      arabic: '	ٱلْمُجِيبُ',
      transliteration: 'AL-MUJEEB',
      translation: 'The Responsive One'),
  const Name(
      id: 45,
      arabic: 'ٱلْوَاسِعُ',
      transliteration: 'AL-WAASI’',
      translation: 'The All-Encompassing, the Boundless'),
  const Name(
      id: 46,
      arabic: '	ٱلْحَكِيمُ',
      transliteration: 'AL-HAKEEM',
      translation: 'The All-Wise'),
  const Name(
      id: 47,
      arabic: 'ٱلْوَدُودُ',
      transliteration: 'AL-WADOOD',
      translation: 'The Most Loving'),
  const Name(
      id: 48,
      arabic: 'ٱلْمَجِيدُ',
      transliteration: 'AL-MAJEED',
      translation: 'The Glorious, The Most Honorable'),
  const Name(
      id: 49,
      arabic: 'ٱلْبَاعِثُ',
      transliteration: 'AL-BA’ITH',
      translation: 'The Resurrector, The Raiser of the Dead'),
  const Name(
      id: 50,
      arabic: '	ٱلْشَّهِيدُ',
      transliteration: 'ASH-SHAHEED',
      translation: 'The All- and Ever Witnessing'),
  const Name(
      id: 51,
      arabic: 'ٱلْحَقُّ',
      transliteration: 'AL-HAQQ',
      translation: 'The Absolute Truth'),
  const Name(
      id: 52,
      arabic: 'ٱلْوَكِيلُ',
      transliteration: 'AL-WAKEEL',
      translation: 'The Trustee, The Disposer of Affairs'),
  const Name(
      id: 53,
      arabic: 'ٱلْقَوِيُّ',
      transliteration: 'AL-QAWIYY',
      translation: 'The All-Strong'),
  const Name(
      id: 54,
      arabic: 'ٱلْمَتِينُ',
      transliteration: 'AL-MATEEN',
      translation: 'The Firm, The Steadfast'),
  const Name(
      id: 55,
      arabic: 'ٱلْوَلِيُّ',
      transliteration: 'AL-WALIYY',
      translation: 'The Protecting Associate'),
  const Name(
      id: 56,
      arabic: 'ٱلْحَمِيدُ',
      transliteration: 'AL-HAMEED',
      translation: 'The Praiseworthy'),
  const Name(
      id: 57,
      arabic: '	ٱلْمُحْصِيُ',
      transliteration: 'AL-MUHSEE',
      translation: 'The All-Enumerating, The Counter'),
  const Name(
      id: 58,
      arabic: 'ٱلْمُبْدِئُ',
      transliteration: '	AL-MUBDI',
      translation: 'The Originator, The Initiator'),
  const Name(
      id: 59,
      arabic: 'ٱلْمُعِيدُ',
      transliteration: 'AL-MU’ID',
      translation: 'The Restorer, The Reinstater'),
  const Name(
      id: 60,
      arabic: 'ٱلْمُحْيِى',
      transliteration: 'AL-MUHYEE',
      translation: 'The Giver of Life'),
  const Name(
      id: 61,
      arabic: 'ٱلْمُمِيتُ',
      transliteration: 'AL-MUMEET',
      translation: 'The Bringer of Death, the Destroyer'),
  const Name(
      id: 62,
      arabic: 'ٱلْحَىُّ',
      transliteration: 'AL-HAYY',
      translation: 'The Ever-Living'),
  const Name(
      id: 63,
      arabic: 'ٱلْقَيُّومُ',
      transliteration: 'AL-QAYYOOM',
      translation: 'The Sustainer, The Self-Subsisting'),
  const Name(
      id: 64,
      arabic: 'ٱلْوَاجِدُ',
      transliteration: 'AL-WAAJID',
      translation: 'The Perceiver'),
  const Name(
      id: 65,
      arabic: 'ٱلْمَاجِدُ',
      transliteration: 'AL-MAAJID',
      translation: 'The Illustrious, the Magnificent'),
  const Name(
      id: 66,
      arabic: 'ٱلْوَاحِدُ',
      transliteration: 'AL-WAAHID',
      translation: 'The One'),
  const Name(
      id: 67,
      arabic: 'ٱلْأَحَد',
      transliteration: 'AL-AHAD',
      translation: '	The Unique, The Only One'),
  const Name(
      id: 68,
      arabic: 'ٱلْصَّمَدُ',
      transliteration: 'AS-SAMAD',
      translation: 'The Eternal, Satisfier of Needs'),
  const Name(
      id: 69,
      arabic: '	ٱلْقَادِرُ',
      transliteration: 'AL-QADIR',
      translation: 'The Capable, The Powerful'),
  const Name(
      id: 70,
      arabic: 'ٱلْمُقْتَدِرُ',
      transliteration: 'AL-MUQTADIR',
      translation: 'The Omnipotent'),
  const Name(
      id: 71,
      arabic: 'ٱلْمُقَدِّمُ',
      transliteration: 'AL-MUQADDIM',
      translation: 'The Expediter, The Promoter'),
  const Name(
      id: 72,
      arabic: 'ٱلْحَىُّ',
      transliteration: 'AL-MU’AKHKHIR',
      translation: 'The Delayer, the Retarder'),
  const Name(
      id: 73,
      arabic: 'ٱلأَوَّلُ',
      transliteration: 'AL-AWWAL',
      translation: 'The First'),
  const Name(
      id: 74,
      arabic: 'ٱلْآخِرُ',
      transliteration: 'AL-AAKHIR',
      translation: 'The Last'),
  const Name(
      id: 75,
      arabic: 'ٱلْظَّاهِرُ',
      transliteration: 'AZ-DHAAHIR',
      translation: 'The Manifest'),
  const Name(
      id: 76,
      arabic: 'ٱلْبَاطِنُ',
      transliteration: 'AL-BAATIN',
      translation: 'The Hidden One, Knower of the Hidden'),
  const Name(
      id: 77,
      arabic: 'ٱلْوَالِي',
      transliteration: 'AL-WAALI',
      translation: 'The Governor, The Patron'),
  const Name(
      id: 78,
      arabic: 'ٱلْمُتَعَالِي',
      transliteration: 'AL-MUTA’ALI',
      translation: 'The Self Exalted'),
  const Name(
      id: 79,
      arabic: '	ٱلْبَرُّ',
      transliteration: 'AL-BARR',
      translation: 'The Source of Goodness, the Kind Benefactor'),
  const Name(
      id: 80,
      arabic: 'ٱلْتَّوَّابُ',
      transliteration: 'AT-TAWWAB',
      translation: 'The Ever-Pardoning, The Relenting'),
  const Name(
      id: 81,
      arabic: 'ٱلْمُنْتَقِمُ',
      transliteration: 'AL-MUNTAQIM',
      translation: 'The Avenger'),
  const Name(
      id: 82,
      arabic: 'ٱلْعَفُوُّ',
      transliteration: 'AL-‘AFUWW',
      translation: 'The Pardoner'),
  const Name(
      id: 83,
      arabic: '	ٱلْرَّؤُفُ',
      transliteration: '	AR-RA’OOF',
      translation: 'The Most Kind'),
  const Name(
      id: 84,
      arabic: 'مَالِكُ ٱلْمُلْكُ',
      transliteration: 'MAALIK-UL-MULK',
      translation: 'Master of the Kingdom, Owner of the Dominion'),
  const Name(
      id: 85,
      arabic: 'ذُو ٱلْجَلَالِ وَٱلْإِكْرَامُ',
      transliteration: 'DHUL-JALAALI WAL-IKRAAM',
      translation:
          'Possessor of Glory and Honour, Lord of Majesty and Generosity'),
  const Name(
      id: 86,
      arabic: 'ٱلْمُقْسِطُ',
      transliteration: 'AL-MUQSIT',
      translation: 'The Equitable, the Requiter'),
  const Name(
      id: 87,
      arabic: 'ٱلْجَامِعُ',
      transliteration: 'AL-JAAMI’',
      translation: 'The Gatherer, the Uniter'),
  const Name(
      id: 88,
      arabic: 'ٱلْغَنيُّ',
      transliteration: 'AL-GHANIYY',
      translation: 'The Self-Sufficient, The Wealthy'),
  const Name(
      id: 89,
      arabic: '	ٱلْمُغْنِيُّ',
      transliteration: 'AL-MUGHNI',
      translation: 'The Enricher'),
  const Name(
      id: 90,
      arabic: 'ٱلْمَانِعُ',
      transliteration: 'AL-MANI’',
      translation: 'The Withholder'),
  const Name(
      id: 91,
      arabic: 'ٱلْضَّارُ',
      transliteration: 'AD-DHARR',
      translation: 'The Distresser'),
  const Name(
      id: 92,
      arabic: 'ٱلْنَّافِعُ',
      transliteration: 'AN-NAFI’',
      translation: 'The Propitious, the Benefactor'),
  const Name(
      id: 93,
      arabic: '	ٱلْنُّورُ',
      transliteration: 'AN-NUR',
      translation: 'The Light, The Illuminator'),
  const Name(
      id: 94,
      arabic: 'ٱلْهَادِي',
      transliteration: '	AL-HAADI',
      translation: 'The Guide'),
  const Name(
      id: 95,
      arabic: 'ٱلْبَدِيعُ',
      transliteration: 'AL-BADEE’',
      translation: 'The Incomparable Originator'),
  const Name(
      id: 96,
      arabic: 'ٱلْبَاقِي',
      transliteration: 'AL-BAAQI',
      translation: 'The Ever-Surviving, The Everlasting'),
  const Name(
      id: 97,
      arabic: '	ٱلْوَارِثُ',
      transliteration: 'AL-WAARITH',
      translation: 'The Inheritor, The Heir'),
  const Name(
      id: 98,
      arabic: 'ٱلْرَّشِيدُ',
      transliteration: 'AR-RASHEED',
      translation: '	The Guide, Infallible Teacher'),
  const Name(
      id: 99,
      arabic: 'ٱلْصَّبُورُ',
      transliteration: 'AS-SABOOR',
      translation: 'The Forbearing, The Patient'),
];
