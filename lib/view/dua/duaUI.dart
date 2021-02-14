import 'package:app/model/DuaModel.dart';
import 'package:flutter/material.dart';

class DuaUI extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Dua'),
      ),
      body: Container(
        child: ListView.builder(
            itemCount: dua.length,
            itemBuilder: (BuildContext ctxt, int index) {
              return Card(
                margin: EdgeInsets.all(10),
                child: Container(
                  margin: EdgeInsets.all(15),
                  child: ListView(
                    shrinkWrap: true,
                    physics: NeverScrollableScrollPhysics(),
                    children: [
                      Text(
                        '${dua[index].id} ${dua[index].reason}',
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                        textAlign: TextAlign.center,
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Text(
                        dua[index].pronunciation,
                        style: TextStyle(fontSize: 18),
                      ),
                      SizedBox(height: 15),
                      Text(
                        dua[index].translation,
                        style: TextStyle(fontSize: 18, color: Colors.grey[700]),
                      )
                    ],
                  ),
                ),
              );
            }),
      ),
    );
  }
}
