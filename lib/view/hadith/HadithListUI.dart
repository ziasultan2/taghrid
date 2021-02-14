import 'package:app/controller/HadithController.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HadithListUI extends StatelessWidget {
  final HadithController controller = Get.find();
  final int bookId;
  final int chapterId;
  HadithListUI({this.bookId, this.chapterId});
  @override
  Widget build(BuildContext context) {
    controller.listOfHadith(bookId, chapterId);
    return Scaffold(
      appBar: AppBar(
        title: Text('Hadith'),
      ),
      body: Container(
        margin: EdgeInsets.only(top: 20, bottom: 20),
        child: Center(
            child: Obx(() => (controller.hadithList.value.code == 200)
                ? ListView.builder(
                    shrinkWrap: true,
                    itemCount: controller.hadithList.value.chapter.length,
                    itemBuilder: (context, index) {
                      return ListTile(
                        leading: Text(
                          controller.hadithList.value.chapter[index].hadithID
                              .toString(),
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        title: Text(
                          controller.hadithList.value.chapter[index].enText,
                          style: TextStyle(),
                        ),
                        subtitle: Text(
                          controller.hadithList.value.chapter[index].enSanad,
                          style: TextStyle(),
                        ),
                      );
                    })
                : Center(
                    child: CupertinoActivityIndicator(),
                  ))),
      ),
    );
  }
}
