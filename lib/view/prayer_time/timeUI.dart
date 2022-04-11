import 'package:app/controller/PrayerController.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:url_launcher/url_launcher.dart';

class PrayerTimeUI extends StatelessWidget {
  final PrayerController controller = Get.put(PrayerController());
  @override
  Widget build(BuildContext context) {
    controller.index();
    return Scaffold(
      appBar: AppBar(
        title: Text('Prayer Time'),
      ),
      body: Container(
        margin: EdgeInsets.only(left: 10, right: 10, top: 15),
        child: Obx(
          () => (controller.prayers.value != null)
              ? ListView(
                  children: [
                    Text(
                      'Today\'s Prayer Time',
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: Colors.green),
                      textAlign: TextAlign.center,
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    ListTile(
                      tileColor: Colors.grey[300],
                      title: Text('Fajr'),
                      trailing: Text(
                          '${controller.prayers.value['Fajr'].toString().replaceAll(new RegExp('%'), '')}'),
                    ),
                    ListTile(
                      tileColor: Colors.white,
                      title: Text('Dhuhr'),
                      trailing: Text(
                          '${controller.prayers.value['Dhuhr'].toString().replaceAll(new RegExp('%'), '')}'),
                    ),
                    ListTile(
                      tileColor: Colors.grey[300],
                      title: Text('Asr'),
                      trailing: Text(
                          '${controller.prayers.value['Asr'].toString().replaceAll(new RegExp('%'), '')}'),
                    ),
                    ListTile(
                      tileColor: Colors.white,
                      title: Text('Maghrib'),
                      trailing: Text(
                          '${controller.prayers.value['Maghrib'].toString().replaceAll(new RegExp('%'), '')}'),
                    ),
                    ListTile(
                      tileColor: Colors.grey[300],
                      title: Text('Isha'),
                      trailing: Text(
                          '${controller.prayers.value['Isha'].toString().replaceAll(new RegExp('%'), '')}'),
                    ),
                    SizedBox(
                      height: 25,
                    ),
                    GestureDetector(
                      onTap: () async {
                        if (!await launch(
                            'https://qiblafinder.withgoogle.com/'))
                          throw 'Could not launch';
                      },
                      child: Center(
                        child: Container(
                          padding: EdgeInsets.all(20),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Colors.green.withOpacity(0.7)),
                          child: Text(
                            'SHOW QIBLA',
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                      ),
                    )
                  ],
                )
              : Container(),
        ),
      ),
    );
  }
}
