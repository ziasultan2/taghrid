import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class Adhkar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Adhkar')),
      body: Center(
        child: Container(
          child: Wrap(
            direction: Axis.vertical,
            children: [
              GestureDetector(
                child: Container(
                    padding: EdgeInsets.all(15),
                    decoration: BoxDecoration(
                      color: Colors.green,
                      border: Border.all(color: Colors.green.withOpacity(0.3)),
                      borderRadius: BorderRadius.circular(5),
                    ),
                    child: Text(
                      'Morning Adhkar',
                      style: TextStyle(color: Colors.white),
                    )),
                onTap: () async {
                  if (!await launch(
                      'https://lifewithallah.com/dhikr-dua/main-adhkar/morning/?fbclid=IwAR0j0gbbEcPdwHhmxZUoPPXYnWXE3_LMrgQqokx1z8C0SoHFvcTnSJ5-taw'))
                    throw 'Could not launch';
                },
              ),
              SizedBox(
                height: 20,
              ),
              GestureDetector(
                child: Container(
                    padding: EdgeInsets.all(15),
                    decoration: BoxDecoration(
                      color: Colors.green,
                      border: Border.all(color: Colors.green.withOpacity(0.3)),
                      borderRadius: BorderRadius.circular(5),
                    ),
                    child: Text(
                      'Evening Adhkar',
                      style: TextStyle(color: Colors.white),
                    )),
                onTap: () async {
                  if (!await launch(
                      'https://lifewithallah.com/dhikr-dua/main-adhkar/evening/?fbclid=IwAR3LIi65Ykhnjtjtx7aKpeifEC5XChr2BNroBJ1zoyKyipSJmcoqN4OMkIw'))
                    throw 'Could not launch';
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
