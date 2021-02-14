class ChapterModel {
  int code;
  List<Chapter> chapter;

  ChapterModel({this.code, this.chapter});

  ChapterModel.fromJson(Map<String, dynamic> json) {
    code = json['code'];
    if (json['Chapter'] != null) {
      chapter = new List<Chapter>();
      json['Chapter'].forEach((v) {
        chapter.add(new Chapter.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.chapter != null) {
      data['Chapter'] = this.chapter.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Chapter {
  int chapterID;
  String chapterName;

  Chapter({this.chapterID, this.chapterName});

  Chapter.fromJson(Map<String, dynamic> json) {
    chapterID = json['Chapter_ID'];
    chapterName = json['Chapter_Name'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['Chapter_ID'] = this.chapterID;
    data['Chapter_Name'] = this.chapterName;
    return data;
  }
}
