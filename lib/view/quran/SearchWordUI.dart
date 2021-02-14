import 'package:app/controller/QuranController.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SearchWord extends StatelessWidget {
  final QuranController controller = Get.find();
  final TextEditingController searchText = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: TextField(
          textInputAction: TextInputAction.search,
          onSubmitted: (value) => controller.searchWord(value),
          decoration: InputDecoration(
            border: InputBorder.none,
            // prefixIcon: Icon(Icons.search),
            hintText: 'Search ',
            contentPadding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
          ),
          style: TextStyle(fontSize: 18, color: Colors.white),
        ),
        actions: [
          IconButton(
              icon: Icon(Icons.search),
              onPressed: () => controller.searchWord(searchText.text))
        ],
      ),
      body: Container(
        margin: EdgeInsets.all(20),
        child: Center(
            child: Obx(() => (controller.search.value.code == 200)
                ? ListView.builder(
                    shrinkWrap: true,
                    itemCount: controller.search.value.data.count,
                    itemBuilder: (context, index) {
                      return Card(
                          child: Container(
                        padding: EdgeInsets.all(15),
                        child: ListView(
                          physics: NeverScrollableScrollPhysics(),
                          shrinkWrap: true,
                          children: [
                            Text(
                              controller
                                  .search.value.data.matches[index].surah.name,
                              style: TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.bold),
                            ),
                            Text(
                              '${index + 1}. ${controller.search.value.data.matches[index].text}',
                              style: TextStyle(fontSize: 20),
                            ),
                          ],
                        ),
                      ));
                    })
                : Center(child: Text("Search Word")))),
      ),
    );
  }
}
