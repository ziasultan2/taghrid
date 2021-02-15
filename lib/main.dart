import 'package:app/controller/QuranController.dart';
import 'package:app/model/choice.dart';
import 'package:app/view/home/feature.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hijri/hijri_calendar.dart';
import 'package:intl/intl.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Taghrid',
      theme: ThemeData(
        primarySwatch: Colors.green,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      debugShowCheckedModeBanner: false,
      home: MyHomePage(title: 'Taghrid'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final controller = Get.put(QuranController());
  HijriCalendar _today = new HijriCalendar.now();

  String formatter = DateFormat('dd MMM y').format(DateTime.now());
  @override
  Widget build(BuildContext context) {
    final orientation = MediaQuery.of(context).orientation;
    return Scaffold(
        body: Container(
      color: Colors.amber[100],
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          Container(
            color: Colors.green[900],
            height: 200,
            child: Row(
              children: [
                Expanded(
                  flex: 1,
                  child: Container(),
                ),
                Expanded(
                  flex: 1,
                  child: Container(
                      child: Column(
                    children: [
                      SizedBox(
                        height: 50,
                      ),
                      Text(
                        _today.hDay.toString(),
                        style: TextStyle(
                            fontSize: 35,
                            fontWeight: FontWeight.bold,
                            height: 1.5,
                            color: Colors.white),
                      ),
                      Text(
                        _today.toFormat("MMMM yyyy"),
                        // formatter,
                        style: TextStyle(
                            fontSize: 20,
                            height: 1.2,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      ),
                      Text(
                        formatter,
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      ),
                    ],
                  )),
                )
              ],
            ),
          ),
          GridView.builder(
              physics: NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              itemCount: 6,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount:
                      (orientation == Orientation.portrait) ? 2 : 3),
              itemBuilder: (BuildContext context, int index) => FeatureWidget(
                    name: home[index].title,
                    img: home[index].icon,
                    type: home[index].type,
                  )),
        ],
      ),
    ));
  }
}
