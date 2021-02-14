import 'package:app/controller/HadithController.dart';
import 'package:app/view/hadith/HadithListUI.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ChapterUI extends StatelessWidget {
  ChapterUI({this.bookId});
  final int bookId;
  HadithController controller = Get.find();
  @override
  Widget build(BuildContext context) {
    controller.chapter(bookId);
    return Scaffold(
      appBar: AppBar(
        title: Text('Chapter'),
      ),
      body: Container(
        child: Obx(() => (controller.chapterList.value.code == 200)
            ? ListView.builder(
                shrinkWrap: true,
                itemCount: controller.chapterList.value.chapter.length,
                itemBuilder: (context, index) {
                  return InkWell(
                    onTap: () => Get.to(HadithListUI(
                      bookId: bookId,
                      chapterId:
                          controller.chapterList.value.chapter[index].chapterID,
                    )),
                    child: ListTile(
                      title: Text(
                        controller.chapterList.value.chapter[index].chapterName,
                        style: TextStyle(),
                      ),
                    ),
                  );
                })
            : Center(
                child: CupertinoActivityIndicator(),
              )),
      ),
    );
  }
}
