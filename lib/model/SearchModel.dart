class SearchModel {
  int code;
  String status;
  Data data;

  SearchModel({this.code, this.status, this.data});

  SearchModel.fromJson(Map<String, dynamic> json) {
    code = json['code'];
    status = json['status'];
    data = json['data'] != null ? new Data.fromJson(json['data']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['code'] = this.code;
    data['status'] = this.status;
    if (this.data != null) {
      data['data'] = this.data.toJson();
    }
    return data;
  }
}

class Data {
  int count;
  List<Matches> matches;

  Data({this.count, this.matches});

  Data.fromJson(Map<String, dynamic> json) {
    count = json['count'];
    if (json['matches'] != null) {
      matches = new List<Matches>();
      json['matches'].forEach((v) {
        matches.add(new Matches.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['count'] = this.count;
    if (this.matches != null) {
      data['matches'] = this.matches.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Matches {
  int number;
  String text;
  Edition edition;
  Surah surah;
  int numberInSurah;

  Matches(
      {this.number, this.text, this.edition, this.surah, this.numberInSurah});

  Matches.fromJson(Map<String, dynamic> json) {
    number = json['number'];
    text = json['text'];
    edition =
        json['edition'] != null ? new Edition.fromJson(json['edition']) : null;
    surah = json['surah'] != null ? new Surah.fromJson(json['surah']) : null;
    numberInSurah = json['numberInSurah'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['number'] = this.number;
    data['text'] = this.text;
    if (this.edition != null) {
      data['edition'] = this.edition.toJson();
    }
    if (this.surah != null) {
      data['surah'] = this.surah.toJson();
    }
    data['numberInSurah'] = this.numberInSurah;
    return data;
  }
}

class Edition {
  String identifier;
  String language;
  String name;
  String englishName;
  String type;

  Edition(
      {this.identifier, this.language, this.name, this.englishName, this.type});

  Edition.fromJson(Map<String, dynamic> json) {
    identifier = json['identifier'];
    language = json['language'];
    name = json['name'];
    englishName = json['englishName'];
    type = json['type'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['identifier'] = this.identifier;
    data['language'] = this.language;
    data['name'] = this.name;
    data['englishName'] = this.englishName;
    data['type'] = this.type;
    return data;
  }
}

class Surah {
  int number;
  String name;
  String englishName;
  String englishNameTranslation;
  String revelationType;

  Surah(
      {this.number,
      this.name,
      this.englishName,
      this.englishNameTranslation,
      this.revelationType});

  Surah.fromJson(Map<String, dynamic> json) {
    number = json['number'];
    name = json['name'];
    englishName = json['englishName'];
    englishNameTranslation = json['englishNameTranslation'];
    revelationType = json['revelationType'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['number'] = this.number;
    data['name'] = this.name;
    data['englishName'] = this.englishName;
    data['englishNameTranslation'] = this.englishNameTranslation;
    data['revelationType'] = this.revelationType;
    return data;
  }
}
