import 'package:app/controller/QuranController.dart';
import 'package:app/view/kalma/juzzDetail.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Juzz extends StatelessWidget {
  final QuranController controller = Get.find();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Khatma in 30 days'),
      ),
      body: Container(
        child: ListView.builder(
            itemCount: 30,
            itemBuilder: (BuildContext ctxt, int index) {
              return InkWell(
                onTap: () => Get.to(JuzzDetail(
                  id: index + 1,
                )),
                child: ListTile(
                  title: Text('Day ${index + 1}'),
                ),
              );
            }),
      ),
    );
  }
}
