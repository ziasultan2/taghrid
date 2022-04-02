import 'package:app/controller/QuranController.dart';
import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:swipedetector/swipedetector.dart';

class Quran extends StatelessWidget {
  AudioPlayer audioPlayer = AudioPlayer();
  final QuranController controller = Get.find();
  @override
  Widget build(BuildContext context) {
    controller.getJuzz(controller.pageNumber.value);
    return Scaffold(
        body: SwipeDetector(
      child: Container(
          height: MediaQuery.of(context).size.height,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage("images/background.jpg"),
              fit: BoxFit.fill,
            ),
          ),
          child: Stack(
            children: [
              Container(
                margin: EdgeInsets.only(top: 15, left: 50, right: 50),
                child: Obx(() => (controller.page.value.code == 200)
                    ? ListView(
                        children: [
                          if (controller
                                  .page.value.data.ayahs[0].numberInSurah ==
                              1)
                            Container(
                              margin: EdgeInsets.only(top: 50, bottom: 20),
                              child: Text(
                                controller.page.value.data.ayahs[0].surah.name,
                                style: TextStyle(
                                    fontSize: 25,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.red),
                                textAlign: TextAlign.center,
                              ),
                            )
                          else
                            Container(
                              height: 40,
                            ),
                          ListView.builder(
                              shrinkWrap: true,
                              physics: NeverScrollableScrollPhysics(),
                              itemCount:
                                  controller.page.value.data.ayahs.length,
                              itemBuilder: (context, index) {
                                return InkWell(
                                  onTap: () {
                                    controller.getDetail(controller
                                        .page.value.data.ayahs[index].number);
                                    showBottomSheet(
                                        context: context,
                                        builder: (context) => Container(
                                              padding: EdgeInsets.only(
                                                  top: 150,
                                                  bottom: 50,
                                                  left: 30,
                                                  right: 30),
                                              child: ListView(
                                                children: [
                                                  Text(
                                                    controller.page.value.data
                                                        .ayahs[index].text,
                                                    style: TextStyle(
                                                        fontSize: 20,
                                                        fontWeight:
                                                            FontWeight.bold,
                                                        color: Colors.green),
                                                  ),
                                                  SizedBox(
                                                    height: 30,
                                                  ),
                                                  Container(
                                                    child: FlatButton(
                                                        color: Colors.green,
                                                        onPressed: () async {
                                                          int result =
                                                              await audioPlayer
                                                                  .play(controller
                                                                      .page
                                                                      .value
                                                                      .data
                                                                      .ayahs[
                                                                          index]
                                                                      .audio);
                                                          print(result);
                                                        },
                                                        child: Text('Play',
                                                            style: TextStyle(
                                                              fontSize: 18,
                                                              color:
                                                                  Colors.white,
                                                            ))),
                                                  ),
                                                  SizedBox(
                                                    height: 30,
                                                  ),
                                                  Obx(() => (controller
                                                              .ayahDetail
                                                              .value
                                                              .code ==
                                                          200)
                                                      ? Container(
                                                          child: ListView(
                                                            shrinkWrap: true,
                                                            children: [
                                                              Text(
                                                                controller
                                                                    .ayahDetail
                                                                    .value
                                                                    .data[1]
                                                                    .text,
                                                              ),
                                                              SizedBox(
                                                                height: 25,
                                                              ),
                                                              Text(
                                                                controller
                                                                    .ayahDetail
                                                                    .value
                                                                    .data[2]
                                                                    .text,
                                                              ),
                                                            ],
                                                          ),
                                                        )
                                                      : Container()),
                                                  SizedBox(
                                                    height: 30,
                                                  ),
                                                  FlatButton(
                                                      color: Colors.red,
                                                      onPressed: () =>
                                                          Get.back(),
                                                      child: Text('CLOSE',
                                                          style: TextStyle(
                                                              fontSize: 18,
                                                              color: Colors
                                                                  .white))),
                                                ],
                                              ),
                                            ));
                                  },
                                  child: RichText(
                                      textAlign: TextAlign.justify,
                                      text: TextSpan(
                                          text: controller.page.value.data
                                                  .ayahs[index].text +
                                              ' ',
                                          style: TextStyle(
                                              fontSize: 20,
                                              fontWeight: FontWeight.bold,
                                              color: Colors.black),
                                          children: <TextSpan>[
                                            TextSpan(
                                              text: ' ' +
                                                  controller
                                                      .page
                                                      .value
                                                      .data
                                                      .ayahs[index]
                                                      .numberInSurah
                                                      .toString(),
                                              style: TextStyle(
                                                  letterSpacing: 3,
                                                  fontSize: 20,
                                                  fontWeight: FontWeight.bold,
                                                  color: Colors.green),
                                            )
                                          ])),
                                );
                              })
                        ],
                      )
                    : Container()),
              ),
              Positioned(
                  bottom: 20,
                  left: MediaQuery.of(context).size.width / 2 - 30,
                  child: Container(
                    width: 80,
                    height: 30,
                    decoration: BoxDecoration(
                        shape: BoxShape.rectangle, color: Color(0xFFe0f2f1)),
                    child: Obx(
                      () => Text(
                        controller.pageNumber.value.toString(),
                        style: TextStyle(
                            fontSize: 25,
                            fontWeight: FontWeight.bold,
                            color: Colors.green),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  )),
              Positioned(
                  top: 50,
                  left: 40,
                  child: InkWell(
                    onTap: () => Get.back(),
                    child: Container(
                      width: 30,
                      height: 30,
                      decoration: BoxDecoration(
                          shape: BoxShape.circle, color: Color(0xFFe0f2f1)),
                      child: Icon(Icons.close),
                    ),
                  )),
            ],
          )),
      onSwipeLeft: () => controller.next(),
      onSwipeRight: () => controller.previous(),
    ));
  }
}
