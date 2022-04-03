import 'package:app/model/choice.dart';
import 'package:app/view/athkar.dart';
import 'package:app/view/dua/duaUI.dart';
import 'package:app/view/hadith/hadithUI.dart';
import 'package:app/view/kalma/juzz.dart';
import 'package:app/view/names/nameUI.dart';
import 'package:app/view/prayer_time/timeUI.dart';
import 'package:app/view/quran/LanguageUI.dart';
import 'package:app/view/quran/SurahListUI.dart';
import 'package:app/view/tasbih/tasbihUI.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';

class FeatureWidget extends StatelessWidget {
  int type;
  final String img;
  final String name;
  FeatureWidget({this.name, this.img, this.type});
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return InkWell(
      onTap: () {
        switch (type) {
          case HomeType.quran:
            check();
            break;
          case HomeType.names:
            Get.to(NameUI());
            break;
          case HomeType.qibla:
            Get.to(Adhkar());
            break;
          case HomeType.prayerTime:
            Get.to(PrayerTimeUI());
            break;
          case HomeType.tasbih:
            Get.to(TasbihUI());
            break;
          case HomeType.dua:
            Get.to(DuaUI());
            break;
          case HomeType.khatma:
            Get.to(Quran());
            break;
          case HomeType.tasbih:
            Get.to(TasbihUI());
            break;
          case HomeType.calender:
            break;
          case HomeType.name:
            Get.to(NameUI());
            break;
          default:
        }
      },
      child: Container(
        padding: EdgeInsets.all(10),
        margin: EdgeInsets.all(10),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(8),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'images/' + img,
              width: (width > 400) ? 100 : 80,
              height: (width > 400) ? 100 : 80,
            ),
            (width > 400)
                ? SizedBox(
                    height: 20,
                  )
                : Container(),
            Text(
              name,
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            )
          ],
        ),
      ),
    );
  }
}

check() async {
  SharedPreferences preferences = await SharedPreferences.getInstance();
  var data = preferences.getBool('selected') ?? false;
  if (data == true) {
    Get.to(SurahListUI());
  } else {
    Get.to(LanguageUI());
  }
}
