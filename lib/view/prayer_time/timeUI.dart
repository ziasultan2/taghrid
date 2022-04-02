import 'package:app/controller/PrayerController.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

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
                      title: Text('Imsak'),
                      trailing: Text('${controller.prayers.value['Imsak']}'),
                    ),
                    ListTile(
                      tileColor: Colors.white,
                      title: Text('Sunrise'),
                      trailing: Text('${controller.prayers.value['Sunrise']}'),
                    ),
                    ListTile(
                      tileColor: Colors.grey[300],
                      title: Text('Fajr'),
                      trailing: Text('${controller.prayers.value['Fajr']}'),
                    ),
                    ListTile(
                      tileColor: Colors.white,
                      title: Text('Dhuhr'),
                      trailing: Text('${controller.prayers.value['Dhuhr']}'),
                    ),
                    ListTile(
                      tileColor: Colors.grey[300],
                      title: Text('Asr'),
                      trailing: Text('${controller.prayers.value['Asr']}'),
                    ),
                    ListTile(
                      tileColor: Colors.white,
                      title: Text('Sunset'),
                      trailing: Text('${controller.prayers.value['Sunset']}'),
                    ),
                    ListTile(
                      tileColor: Colors.grey[300],
                      title: Text('Maghrib'),
                      trailing: Text('${controller.prayers.value['Maghrib']}'),
                    ),
                    ListTile(
                      tileColor: Colors.white,
                      title: Text('Isha'),
                      trailing: Text('${controller.prayers.value['Isha']}'),
                    ),
                    ListTile(
                      tileColor: Colors.grey[300],
                      title: Text('Midnight'),
                      trailing: Text('${controller.prayers.value['Midnight']}'),
                    ),
                  ],
                )
              : Container(),
        ),
      ),
    );
  }
}
