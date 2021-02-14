import 'package:app/controller/TasbihController.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class TasbihUI extends StatelessWidget {
  final TasbihController controller = Get.put(TasbihController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Tasbih'),
      ),
      body: Container(
        color: Colors.white,
        child: Center(
          child: InkWell(
            onTap: () => controller.increment(),
            child: Container(
              width: 250,
              height: 250,
              child: Obx(() => Center(
                  child: (controller.limit.value == 0)
                      ? Text(
                          'Start',
                          style: TextStyle(
                              fontSize: 35, fontWeight: FontWeight.bold),
                        )
                      : Text(
                          controller.limit.toString(),
                          style: TextStyle(
                              fontSize: 35, fontWeight: FontWeight.bold),
                        ))),
              decoration: BoxDecoration(
                  shape: BoxShape.circle, color: Color(0xFFe0f2f1)),
            ),
          ),
        ),
      ),
      bottomNavigationBar: SafeArea(
          child: Container(
        color: Colors.green,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            InkWell(
              onTap: () => controller.exit(),
              child: Container(
                padding: EdgeInsets.all(15),
                color: Colors.green,
                child: Text(
                  'Exit',
                  style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
            Container(
              color: Colors.white,
              width: 5,
              height: 30,
            ),
            InkWell(
              onTap: () => controller.reset(),
              child: Container(
                padding: EdgeInsets.all(15),
                color: Colors.green,
                child: Text(
                  'RESET',
                  style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
          ],
        ),
      )),
    );
  }
}
