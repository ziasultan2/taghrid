class SurahModel {
  int code;
  String status;
  List<Data> data;

  SurahModel({this.code, this.status, this.data});

  SurahModel.fromJson(Map<String, dynamic> json) {
    code = json['code'];
    status = json['status'];
    if (json['data'] != null) {
      data = new List<Data>();
      json['data'].forEach((v) {
        data.add(new Data.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['code'] = this.code;
    data['status'] = this.status;
    if (this.data != null) {
      data['data'] = this.data.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Data {
  int number;
  String name;
  String englishName;
  String englishNameTranslation;
  String revelationType;
  int numberOfAyahs;
  List<Ayahs> ayahs;
  Edition edition;
  List<EnglishAyahs> englishAyahs;
  List<EnglishAyahs> translateAyahs;

  Data(
      {this.number,
      this.name,
      this.englishName,
      this.englishNameTranslation,
      this.revelationType,
      this.numberOfAyahs,
      this.ayahs,
      this.edition,
      this.englishAyahs,
      this.translateAyahs});

  Data.fromJson(Map<String, dynamic> json) {
    number = json['number'];
    name = json['name'];
    englishName = json['englishName'];
    englishNameTranslation = json['englishNameTranslation'];
    revelationType = json['revelationType'];
    numberOfAyahs = json['numberOfAyahs'];
    if (json['ayahs'] != null) {
      ayahs = new List<Ayahs>();
      json['ayahs'].forEach((v) {
        ayahs.add(new Ayahs.fromJson(v));
      });
    }
    edition =
        json['edition'] != null ? new Edition.fromJson(json['edition']) : null;
    if (json['ayahs'] != null) {
      englishAyahs = new List<EnglishAyahs>();
      json['ayahs'].forEach((v) {
        englishAyahs.add(new EnglishAyahs.fromJson(v));
      });
    }
    if (json['ayahs'] != null) {
      translateAyahs = new List<EnglishAyahs>();
      json['ayahs'].forEach((v) {
        translateAyahs.add(new EnglishAyahs.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['number'] = this.number;
    data['name'] = this.name;
    data['englishName'] = this.englishName;
    data['englishNameTranslation'] = this.englishNameTranslation;
    data['revelationType'] = this.revelationType;
    data['numberOfAyahs'] = this.numberOfAyahs;
    if (this.ayahs != null) {
      data['ayahs'] = this.ayahs.map((v) => v.toJson()).toList();
    }
    if (this.edition != null) {
      data['edition'] = this.edition.toJson();
    }
    if (this.englishAyahs != null) {
      data['ayahs'] = this.englishAyahs.map((v) => v.toJson()).toList();
    }
    if (this.translateAyahs != null) {
      data['ayahs'] = this.translateAyahs.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Ayahs {
  int number;
  String audio;
  String text;
  int numberInSurah;
  int juz;
  int manzil;
  int page;
  int hizbQuarter;

  Ayahs(
      {this.number,
      this.audio,
      this.text,
      this.numberInSurah,
      this.juz,
      this.manzil,
      this.page,
      this.hizbQuarter});

  Ayahs.fromJson(Map<String, dynamic> json) {
    number = json['number'];
    audio = json['audio'];
    text = json['text'];
    numberInSurah = json['numberInSurah'];
    juz = json['juz'];
    manzil = json['manzil'];
    page = json['page'];
    hizbQuarter = json['hizbQuarter'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['number'] = this.number;
    data['audio'] = this.audio;
    data['text'] = this.text;
    data['numberInSurah'] = this.numberInSurah;
    data['juz'] = this.juz;
    data['manzil'] = this.manzil;
    data['page'] = this.page;
    data['hizbQuarter'] = this.hizbQuarter;
    return data;
  }
}

class Edition {
  String identifier;
  String language;
  String name;
  String englishName;
  String format;
  String type;
  String direction;

  Edition(
      {this.identifier,
      this.language,
      this.name,
      this.englishName,
      this.format,
      this.type,
      this.direction});

  Edition.fromJson(Map<String, dynamic> json) {
    identifier = json['identifier'];
    language = json['language'];
    name = json['name'];
    englishName = json['englishName'];
    format = json['format'];
    type = json['type'];
    direction = json['direction'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['identifier'] = this.identifier;
    data['language'] = this.language;
    data['name'] = this.name;
    data['englishName'] = this.englishName;
    data['format'] = this.format;
    data['type'] = this.type;
    data['direction'] = this.direction;
    return data;
  }
}

class EnglishAyahs {
  int number;
  String text;
  int numberInSurah;
  int juz;
  int manzil;
  int page;
  int hizbQuarter;
  bool sajda;

  EnglishAyahs(
      {this.number,
      this.text,
      this.numberInSurah,
      this.juz,
      this.manzil,
      this.page,
      this.hizbQuarter,
      this.sajda});

  EnglishAyahs.fromJson(Map<String, dynamic> json) {
    number = json['number'];
    text = json['text'];
    numberInSurah = json['numberInSurah'];
    juz = json['juz'];
    manzil = json['manzil'];
    page = json['page'];
    hizbQuarter = json['hizbQuarter'];
    sajda = (json['sajda'] != false) ? true : false;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['number'] = this.number;
    data['text'] = this.text;
    data['numberInSurah'] = this.numberInSurah;
    data['juz'] = this.juz;
    data['manzil'] = this.manzil;
    data['page'] = this.page;
    data['hizbQuarter'] = this.hizbQuarter;
    data['sajda'] = this.sajda;
    return data;
  }
}
