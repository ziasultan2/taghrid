import 'package:app/controller/QuranController.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class JuzzDetail extends StatelessWidget {
  final int id;
  JuzzDetail({this.id});
  final QuranController controller = Get.find();
  @override
  Widget build(BuildContext context) {
    controller.getJuzz(id);
    return Scaffold(
      appBar: AppBar(
        title: Text('Day $id'),
      ),
      body: Scrollbar(
        child: Container(
          margin: EdgeInsets.all(20),
          child: Center(
              child: Obx(() => (controller.juzz.value.data != null)
                  ? ListView.builder(
                      shrinkWrap: true,
                      itemCount: controller.juzz.value.data.ayahs.length,
                      itemBuilder: (context, index) {
                        if (controller.juzz.value.data.number != null) {
                          return Container(
                              padding: EdgeInsets.only(top: 15, bottom: 15),
                              child: ListView(
                                shrinkWrap: true,
                                physics: NeverScrollableScrollPhysics(),
                                children: [
                                  (controller.juzz.value.data.ayahs[index]
                                              .sajda ==
                                          true)
                                      ? Text('🙇‍♂️',
                                          style: TextStyle(
                                              fontSize: 20,
                                              fontWeight: FontWeight.bold))
                                      : Container(),
                                  Text(
                                    '${index + 1}. ${controller.juzz.value.data.ayahs[index].text}',
                                    style: TextStyle(
                                      fontSize: 20,
                                    ),
                                  )
                                ],
                              ));
                        } else {
                          return Text("hell wowdd");
                        }
                      })
                  : Center(
                      child: CircularProgressIndicator(),
                    ))),
        ),
      ),
    );
  }
}
