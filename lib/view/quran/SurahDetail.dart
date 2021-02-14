import 'package:app/controller/QuranController.dart';
import 'package:app/view/quran/LanguageUI.dart';
import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SurahDetail extends StatelessWidget {
  AudioPlayer audioPlayer = AudioPlayer();
  final String name;
  final int id;
  SurahDetail({this.id, this.name});
  final QuranController controller = Get.find();
  final GlobalKey<PopupMenuButtonState<int>> _key = GlobalKey();
  @override
  Widget build(BuildContext context) {
    controller.surah(id);
    return Scaffold(
      appBar: AppBar(
        title: Text(name),
        actions: [
          PopupMenuButton<int>(
            key: _key,
            itemBuilder: (context) {
              return <PopupMenuEntry<int>>[
                PopupMenuItem(
                    child:
                        InkWell(onTap: select(), child: Text('Select Edition')),
                    value: 0),
              ];
            },
          ),
        ],
      ),
      body: Scrollbar(
        child: Container(
          margin: EdgeInsets.only(left: 20, right: 20),
          child: Obx(() => (controller.sura.value.code == 200)
              ? ListView.builder(
                  shrinkWrap: true,
                  itemCount: controller.sura.value.data[0].numberOfAyahs,
                  itemBuilder: (context, index) {
                    return Card(
                        margin: EdgeInsets.all(10),
                        child: InkWell(
                          onTap: () async {
                            int result = await audioPlayer.play(controller
                                .sura.value.data[0].ayahs[index].audio);
                            if (result == 1) {
                              // success
                            }
                          },
                          child: Container(
                            padding: EdgeInsets.all(15),
                            child: ListView(
                              shrinkWrap: true,
                              physics: NeverScrollableScrollPhysics(),
                              children: [
                                (controller.sura.value.data[1]
                                        .englishAyahs[index].sajda)
                                    ? Text('Sajda۩',
                                        style: TextStyle(
                                            fontSize: 20,
                                            fontWeight: FontWeight.bold,
                                            color: Colors.red))
                                    : Container(),
                                Text(
                                  controller
                                      .sura.value.data[0].ayahs[index].text,
                                  style: TextStyle(fontSize: 18),
                                ),
                                SizedBox(
                                  height: 15,
                                ),
                                Text(
                                  '${index + 1}. ${controller.sura.value.data[1].englishAyahs[index].text}',
                                  style: TextStyle(fontSize: 18),
                                ),
                                SizedBox(
                                  height: 15,
                                ),
                                Text(
                                  controller.sura.value.data[2]
                                      .translateAyahs[index].text,
                                  style: TextStyle(fontSize: 18),
                                ),
                              ],
                            ),
                          ),
                        ));
                  })
              : Center(child: CupertinoActivityIndicator())),
        ),
      ),
    );
  }
}

select() {
  Get.off(LanguageUI());
}
