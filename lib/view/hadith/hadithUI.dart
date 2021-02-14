import 'package:app/controller/HadithController.dart';
import 'package:app/view/hadith/ChapterUI.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HadithUI extends StatelessWidget {
  final HadithController controller = Get.put(HadithController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Hadith Book'),
      ),
      body: Container(
        child: Center(
            child: Obx(() => (controller.hadith.value.code == 200)
                ? ListView.builder(
                    shrinkWrap: true,
                    itemCount: controller.hadith.value.books.length,
                    itemBuilder: (context, index) {
                      return InkWell(
                        onTap: () => Get.to(ChapterUI(
                          bookId: controller.hadith.value.books[index].bookID,
                        )),
                        child: ListTile(
                          title: Text(
                            controller.hadith.value.books[index].bookName,
                            style: TextStyle(),
                          ),
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
