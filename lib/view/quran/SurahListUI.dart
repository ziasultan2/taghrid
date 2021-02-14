import 'package:app/controller/QuranController.dart';
import 'package:app/view/quran/SearchWordUI.dart';
import 'package:app/view/quran/SurahDetail.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SurahListUI extends StatelessWidget {
  final QuranController controller = Get.find();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Surah'),
        actions: [
          IconButton(
              icon: Icon(Icons.search), onPressed: () => Get.to(SearchWord()))
        ],
      ),
      body: Container(
        margin: EdgeInsets.only(left: 20, right: 20),
        child: Center(
            child: Obx(() => (controller.quran.value.code == 200)
                ? ListView.builder(
                    shrinkWrap: true,
                    itemCount: controller.quran.value.data.surahs.count,
                    itemBuilder: (context, index) {
                      return InkWell(
                        onTap: () => Get.to(SurahDetail(
                          id: controller
                              .quran.value.data.surahs.references[index].number,
                          name: controller.quran.value.data.surahs
                              .references[index].englishName,
                        )),
                        child: Card(
                            margin: EdgeInsets.only(bottom: 15),
                            child: Container(
                              padding: EdgeInsets.only(top: 10, bottom: 10),
                              child: ListView(
                                physics: NeverScrollableScrollPhysics(),
                                shrinkWrap: true,
                                children: [
                                  Text(
                                    controller.quran.value.data.surahs
                                        .references[index].name,
                                    style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  Text(
                                    controller.quran.value.data.surahs
                                        .references[index].englishName,
                                    style: TextStyle(fontSize: 18),
                                  ),
                                  Text(
                                    controller
                                        .quran
                                        .value
                                        .data
                                        .surahs
                                        .references[index]
                                        .englishNameTranslation,
                                    style: TextStyle(fontSize: 18),
                                  ),
                                ],
                              ),
                            )),
                      );
                    })
                : Center(
                    child: CupertinoActivityIndicator(),
                  ))),
      ),
    );
  }
}
