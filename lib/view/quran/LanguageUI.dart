import 'package:app/controller/UserChoiceController.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LanguageUI extends StatelessWidget {
  final controller = Get.put(UserChoiceController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Select Language'),
      ),
      body: Container(
        margin: EdgeInsets.only(left: 20, right: 20),
        child: Center(
            child: Obx(() => (controller.language.value.code == 200)
                ? ListView.builder(
                    shrinkWrap: true,
                    itemCount: controller.language.value.data.length,
                    itemBuilder: (context, index) {
                      return InkWell(
                        onTap: () => controller.save(
                            controller.language.value.data[index].identifier,
                            controller.language.value.data[index].language),
                        child: Card(
                            child: Container(
                          padding: EdgeInsets.all(15),
                          child: ListView(
                            physics: NeverScrollableScrollPhysics(),
                            shrinkWrap: true,
                            children: [
                              Text(
                                controller.language.value.data[index].language,
                                style: TextStyle(
                                    fontSize: 18, fontWeight: FontWeight.bold),
                              ),
                              Text(
                                controller.language.value.data[index].name,
                                style: TextStyle(
                                    fontSize: 18, fontWeight: FontWeight.bold),
                              ),
                              Text(
                                controller
                                    .language.value.data[index].englishName,
                                style: TextStyle(fontSize: 18),
                              ),
                            ],
                          ),
                        )),
                      );
                    })
                : Center(
                    child: CircularProgressIndicator(),
                  ))),
      ),
    );
  }
}
