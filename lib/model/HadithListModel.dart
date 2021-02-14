class HadithListModel {
  int code;
  List<Chapter> chapter;

  HadithListModel({this.code, this.chapter});

  HadithListModel.fromJson(Map<String, dynamic> json) {
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
    data['code'] = this.code;
    if (this.chapter != null) {
      data['Chapter'] = this.chapter.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Chapter {
  int hadithID;
  String enText;
  String enSanad;

  Chapter({this.hadithID, this.enText, this.enSanad});

  Chapter.fromJson(Map<String, dynamic> json) {
    hadithID = json['Hadith_ID'];
    enText = json['En_Text'];
    enSanad = json['En_Sanad'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['Hadith_ID'] = this.hadithID;
    data['En_Text'] = this.enText;
    data['En_Sanad'] = this.enSanad;
    return data;
  }
}
